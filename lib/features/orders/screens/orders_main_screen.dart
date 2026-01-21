import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'pending_orders_screen.dart';
import 'accepted_orders_screen.dart';
import 'sub_orders_screen.dart';
import 'completed_orders_screen.dart';
import 'cancelled_orders_screen.dart';

class OrdersMainScreen extends ConsumerStatefulWidget {
  const OrdersMainScreen({super.key});

  @override
  ConsumerState<OrdersMainScreen> createState() => _OrdersMainScreenState();
}

class _OrdersMainScreenState extends ConsumerState<OrdersMainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الطلبات'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          tabs: const [
            Tab(
              icon: Icon(Icons.pending_actions),
              text: 'الجديدة',
            ),
            Tab(
              icon: Icon(Icons.check_circle),
              text: 'المقبولة',
            ),
            Tab(
              icon: Icon(Icons.recycling),
              text: 'الفرعية',
            ),
            Tab(
              icon: Icon(Icons.done_all),
              text: 'المكتملة',
            ),
            Tab(
              icon: Icon(Icons.cancel),
              text: 'الملغية',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          PendingOrdersScreen(),
          AcceptedOrdersScreen(),
          SubOrdersScreen(),
          CompletedOrdersScreen(),
          CancelledOrdersScreen(),
        ],
      ),
    );
  }
}
