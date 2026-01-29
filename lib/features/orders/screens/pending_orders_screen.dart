import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../models/order_models.dart' as models;
import '../providers/orders_provider.dart';
import '../widgets/submit_offer_dialog.dart';
import '../widgets/order_location_map.dart';

class PendingOrdersScreen extends ConsumerStatefulWidget {
  const PendingOrdersScreen({super.key});

  @override
  ConsumerState<PendingOrdersScreen> createState() =>
      _PendingOrdersScreenState();
}

class _PendingOrdersScreenState extends ConsumerState<PendingOrdersScreen>
    with RouteAware {
  String? _containerTypeFilter;
  String? _containerSizeFilter;
  String _sortBy = 'distance'; // distance, date, type

  @override
  void initState() {
    super.initState();
    // Load orders when screen is first opened
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(pendingOrdersProvider.notifier).fetchOrders();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Subscribe to route changes to detect when coming back to this screen
    final route = ModalRoute.of(context);
    if (route is PageRoute) {
      // Will trigger didPopNext when returning to this screen
    }
  }

  @override
  void didPopNext() {
    // Called when returning to this screen from another screen
    debugPrint('🔄 Returned to Pending Orders - refreshing...');
    ref.read(pendingOrdersProvider.notifier).fetchOrders();
  }

  @override
  Widget build(BuildContext context) {
    final ordersState = ref.watch(pendingOrdersProvider);

    // Apply filters and sorting - create mutable copy
    var filteredOrders = List<models.PendingOrder>.from(ordersState.orders);

    if (_containerTypeFilter != null) {
      filteredOrders = filteredOrders
          .where((o) => o.containerType == _containerTypeFilter)
          .toList();
    }

    if (_containerSizeFilter != null) {
      filteredOrders = filteredOrders
          .where((o) => o.containerSize == _containerSizeFilter)
          .toList();
    }

    // Sort
    if (_sortBy == 'distance') {
      filteredOrders.sort((a, b) => a.distance.compareTo(b.distance));
    } else if (_sortBy == 'date') {
      filteredOrders.sort((a, b) => a.deliveryDate.compareTo(b.deliveryDate));
    } else if (_sortBy == 'type') {
      filteredOrders.sort((a, b) => a.containerType.compareTo(b.containerType));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('الطلبات المتاحة'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.read(pendingOrdersProvider.notifier).fetchOrders();
            },
          ),
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: _showFilterDialog,
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.sort),
            onSelected: (value) {
              setState(() => _sortBy = value);
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'distance',
                child: Text('ترتيب حسب المسافة'),
              ),
              const PopupMenuItem(
                value: 'date',
                child: Text('ترتيب حسب التاريخ'),
              ),
              const PopupMenuItem(
                value: 'type',
                child: Text('ترتيب حسب النوع'),
              ),
            ],
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(pendingOrdersProvider.notifier).fetchOrders();
        },
        child: ordersState.isLoading && ordersState.orders.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : ordersState.error != null
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.error_outline,
                            size: 64, color: Colors.red),
                        const SizedBox(height: 16),
                        Text(
                          ordersState.error!,
                          style: const TextStyle(color: Colors.red),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            ref
                                .read(pendingOrdersProvider.notifier)
                                .fetchOrders();
                          },
                          child: const Text('إعادة المحاولة'),
                        ),
                      ],
                    ),
                  )
                : filteredOrders.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.inbox_outlined,
                                size: 64, color: Colors.grey[400]),
                            const SizedBox(height: 16),
                            Text(
                              'لا توجد طلبات متاحة حالياً',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.all(16),
                        itemCount: filteredOrders.length,
                        itemBuilder: (context, index) {
                          final order = filteredOrders[index];
                          return _OrderCard(
                            order: order,
                            onTap: () => _showOrderDetails(order),
                            onSubmitOffer: order.applied
                                ? null
                                : () => _showSubmitOfferDialog(order),
                          );
                        },
                      ),
      ),
    );
  }

  void _showFilterDialog() {
    showDialog(
      context: context,
      builder: (context) {
        String? tempTypeFilter = _containerTypeFilter;
        String? tempSizeFilter = _containerSizeFilter;

        return StatefulBuilder(
          builder: (context, setDialogState) {
            return AlertDialog(
              title: const Text('تصفية الطلبات'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButtonFormField<String>(
                    value: tempTypeFilter,
                    decoration: const InputDecoration(
                      labelText: 'نوع الحاوية',
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(value: null, child: Text('الكل')),
                      DropdownMenuItem(value: 'دباب', child: Text('دباب')),
                      DropdownMenuItem(value: 'صهريج', child: Text('صهريج')),
                    ],
                    onChanged: (value) {
                      setDialogState(() => tempTypeFilter = value);
                    },
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    value: tempSizeFilter,
                    decoration: const InputDecoration(
                      labelText: 'الحجم',
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(value: null, child: Text('الكل')),
                      DropdownMenuItem(value: '10 متر', child: Text('10 متر')),
                      DropdownMenuItem(
                          value: '5000 لتر', child: Text('5000 لتر')),
                    ],
                    onChanged: (value) {
                      setDialogState(() => tempSizeFilter = value);
                    },
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _containerTypeFilter = null;
                      _containerSizeFilter = null;
                    });
                    Navigator.pop(context);
                  },
                  child: const Text('إعادة تعيين'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('إلغاء'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _containerTypeFilter = tempTypeFilter;
                      _containerSizeFilter = tempSizeFilter;
                    });
                    Navigator.pop(context);
                  },
                  child: const Text('تطبيق'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showOrderDetails(models.PendingOrder order) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.9,
        builder: (context, scrollController) {
          final dateFormat = DateFormat('dd/MM/yyyy HH:mm', 'ar');

          return Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: ListView(
              controller: scrollController,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                Text(
                  order.orderNumber,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                // Map
                OrderLocationMap(
                  latitude: order.deliveryLocation.latitude,
                  longitude: order.deliveryLocation.longitude,
                  address: order.deliveryLocation.address,
                ),
                const SizedBox(height: 20),
                _DetailRow(
                  icon: Icons.inbox,
                  label: 'نوع الحاوية',
                  value: '${order.containerType} - ${order.containerSize}',
                ),
                _DetailRow(
                  icon: Icons.event,
                  label: 'نوع الإيجار',
                  value: order.rentalTypeLabel,
                ),
                _DetailRow(
                  icon: Icons.calendar_today,
                  label: 'تاريخ التوصيل',
                  value: dateFormat.format(order.deliveryDate),
                ),
                _DetailRow(
                  icon: Icons.location_on,
                  label: 'العنوان',
                  value: order.deliveryLocation.address ?? 'غير محدد',
                ),
                _DetailRow(
                  icon: Icons.route,
                  label: 'المسافة',
                  value: order.distanceLabel,
                ),
                if (order.customerName != null)
                  _DetailRow(
                    icon: Icons.person,
                    label: 'العميل',
                    value: order.customerName!,
                  ),
                if (order.customerPhone != null)
                  _DetailRow(
                    icon: Icons.phone,
                    label: 'الهاتف',
                    value: order.customerPhone!,
                  ),
                const SizedBox(height: 20),
                if (!order.applied)
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        _showSubmitOfferDialog(order);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text('تقديم عرض'),
                    ),
                  )
                else
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.green),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.check_circle, color: Colors.green[700]),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Text(
                            'تم تقديم عرض لهذا الطلب',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showSubmitOfferDialog(models.PendingOrder order) {
    showDialog(
      context: context,
      builder: (context) => SubmitOfferDialog(order: order),
    );
  }
}

class _OrderCard extends StatelessWidget {
  final models.PendingOrder order;
  final VoidCallback onTap;
  final VoidCallback? onSubmitOffer;

  const _OrderCard({
    required this.order,
    required this.onTap,
    this.onSubmitOffer,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      order.orderNumber,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color(order.distanceColorValue).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      order.distanceLabel,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(order.distanceColorValue),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.inbox, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(
                    '${order.containerType} - ${order.containerSize}',
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.location_on, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      order.deliveryLocation.address ?? 'غير محدد',
                      style: const TextStyle(fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(
                    DateFormat('dd/MM/yyyy', 'ar').format(order.deliveryDate),
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(width: 16),
                  const Icon(Icons.event, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(
                    order.rentalTypeLabel,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
              // Show unload count for monthly/yearly rentals
              if (order.unloadCount != null && 
                  (order.rentalType == 'monthly' || order.rentalType == 'annual')) ...[
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.recycling, size: 16, color: Colors.orange),
                    const SizedBox(width: 4),
                    Text(
                      '${order.unloadCount} عملية تفريغ',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
              if (order.customerName != null) ...[
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.person, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      order.customerName!,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
              const SizedBox(height: 12),
              if (order.applied)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.check_circle, size: 16, color: Colors.green[700]),
                      const SizedBox(width: 4),
                      const Text(
                        'مقدم عرض',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              else
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: onSubmitOffer,
                    child: const Text('تقديم عرض'),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: Colors.grey[600]),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
