# Flutter Dashboard Implementation Guide

> **Purpose**: Complete documentation for implementing the Dashboard screen in the Flutter mobile app
> 
> **Scope**: Display company statistics (containers, orders, drivers) and monthly trends chart
> 
> **Target**: AI agent implementation - includes all API contracts, data models, and Flutter code patterns

---

## Table of Contents

1. [Overview](#overview)
2. [Dashboard Data Model](#dashboard-data-model)
3. [API Endpoint](#api-endpoint)
4. [Screen Structure](#screen-structure)
5. [UI Design (Mobile-Optimized)](#ui-design-mobile-optimized)
6. [Flutter Models](#flutter-models)
7. [API Service](#api-service)
8. [State Management (Riverpod)](#state-management-riverpod)
9. [UI Implementation Patterns](#ui-implementation-patterns)
10. [Implementation Checklist](#implementation-checklist)
11. [Required Packages](#required-packages)

---

## Overview

The Dashboard screen displays an overview of the company's key metrics:

- **Container Statistics**: Total, Rented, Available
- **Order Statistics**: Total, Pending, Completed
- **Driver Statistics**: Total drivers, Completion rate percentage
- **Monthly Trends Chart**: 12 months of orders and revenue data

**Key Features**:
- ✅ Single API call to fetch all dashboard data
- ✅ Real-time statistics cards
- ✅ Visual monthly trends chart
- ✅ Pull-to-refresh functionality
- ✅ Loading and error states
- ❌ **No circular charts** (use modern card-based UI instead)

---

## Dashboard Data Model

### Complete Dashboard Stats Structure

```typescript
{
  containerStats: {
    total: number,      // Total containers in system
    rented: number,     // Currently rented containers
    available: number   // Available containers for rent
  },
  orderStats: {
    total: number,      // Total orders
    pending: number,    // Orders being processed
    completed: number   // Completed orders
  },
  driverStats: {
    total: number,           // Total drivers
    completionRate: number   // Completion rate percentage (0-100)
  },
  monthlyData: [
    {
      month: string,    // Arabic month name (e.g., "يناير")
      requests: number, // Number of orders/requests
      revenue: number   // Revenue in thousands (e.g., 150 = 150k SAR)
    }
    // ... 12 months total
  ],
  currentMonth: {
    orders: number,   // Current month orders count
    revenue: number,  // Current month revenue
    month: string     // Current month name (Arabic)
  }
}
```

### Month Names (Arabic)

```dart
['يناير', 'فبراير', 'مارس', 'أبريل', 'مايو', 'يونيو', 
 'يوليو', 'أغسطس', 'سبتمبر', 'أكتوبر', 'نوفمبر', 'ديسمبر']
```

---

## API Endpoint

### Get Dashboard Statistics

**Endpoint**: `GET /api/company/dashboard/stats`

**Headers**:
```json
{
  "Authorization": "Bearer <token>"
}
```

**Response** (200 OK):
```json
{
  "data": {
    "containerStats": {
      "total": 150,
      "rented": 95,
      "available": 55
    },
    "orderStats": {
      "total": 450,
      "pending": 25,
      "completed": 425
    },
    "driverStats": {
      "total": 12,
      "completionRate": 94.5
    },
    "monthlyData": [
      {
        "month": "يناير",
        "requests": 35,
        "revenue": 125
      },
      {
        "month": "فبراير",
        "requests": 42,
        "revenue": 150
      },
      {
        "month": "مارس",
        "requests": 38,
        "revenue": 135
      },
      {
        "month": "أبريل",
        "requests": 45,
        "revenue": 160
      },
      {
        "month": "مايو",
        "requests": 40,
        "revenue": 145
      },
      {
        "month": "يونيو",
        "requests": 48,
        "revenue": 170
      },
      {
        "month": "يوليو",
        "requests": 50,
        "revenue": 180
      },
      {
        "month": "أغسطس",
        "requests": 52,
        "revenue": 185
      },
      {
        "month": "سبتمبر",
        "requests": 47,
        "revenue": 165
      },
      {
        "month": "أكتوبر",
        "requests": 55,
        "revenue": 195
      },
      {
        "month": "نوفمبر",
        "requests": 58,
        "revenue": 205
      },
      {
        "month": "ديسمبر",
        "requests": 60,
        "revenue": 215
      }
    ],
    "currentMonth": {
      "orders": 60,
      "revenue": 215,
      "month": "ديسمبر"
    }
  }
}
```

**Error Response** (401/500):
```json
{
  "message": "Failed to fetch dashboard statistics"
}
```

**Notes**:
- Revenue values are in thousands (e.g., 125 = 125,000 SAR)
- Monthly data always contains 12 months (current year)
- Completion rate is a percentage (0-100)

---

## Screen Structure

### Layout Overview

```
┌─────────────────────────────────────┐
│ Dashboard                    [🔄]   │  ← AppBar with refresh
├─────────────────────────────────────┤
│                                     │
│ ┌─────────────────────────────────┐ │
│ │ Container Stats Card            │ │
│ │ 📦 الحاويات                     │ │
│ │ ┌────────┐ ┌────────┐ ┌───────┐│ │
│ │ │ 150    │ │ 95     │ │ 55    ││ │
│ │ │ الإجمالي│ │ المؤجرة│ │المتوفرة││ │
│ │ └────────┘ └────────┘ └───────┘│ │
│ └─────────────────────────────────┘ │
│                                     │
│ ┌─────────────────────────────────┐ │
│ │ Order Stats Card                │ │
│ │ 📋 الطلبات                      │ │
│ │ ┌────────┐ ┌────────┐ ┌───────┐│ │
│ │ │ 450    │ │ 25     │ │ 425   ││ │
│ │ │ الإجمالي│ │قيد المعالجة│مكتملة││ │
│ │ └────────┘ └────────┘ └───────┘│ │
│ └─────────────────────────────────┘ │
│                                     │
│ ┌─────────────────────────────────┐ │
│ │ Driver Stats Card               │ │
│ │ 🚛 السائقين                     │ │
│ │ ┌──────────────┐ ┌────────────┐│ │
│ │ │ 12           │ │ 94.5%      ││ │
│ │ │ عدد السائقين │ │نسبة الإنجاز││ │
│ │ └──────────────┘ └────────────┘│ │
│ └─────────────────────────────────┘ │
│                                     │
│ ┌─────────────────────────────────┐ │
│ │ Monthly Chart                   │ │
│ │ 📊 الإحصائيات الشهرية           │ │
│ │                                 │ │
│ │      [Line/Bar Chart]           │ │
│ │   Orders & Revenue Trends       │ │
│ │                                 │ │
│ └─────────────────────────────────┘ │
│                                     │
└─────────────────────────────────────┘
```

---

## UI Design (Mobile-Optimized)

### Design Principles

**❌ Don't Use**: Circular/donut charts (as specified by user)

**✅ Use Instead**: 
- Modern card-based design
- Clean number displays
- Color-coded stats
- Linear progress bars (for percentages)
- Simple bar/line chart for monthly trends

### Stat Cards Design

#### Container Stats Card

```
┌─────────────────────────────────────┐
│ 📦 إحصائيات الحاويات        [truck.svg]│
├─────────────────────────────────────┤
│  ┌──────────┐ ┌──────────┐ ┌──────┐│
│  │   150    │ │    95    │ │  55  ││
│  │ الإجمالي  │ │ المؤجرة  │ │المتوفرة││
│  │   gray   │ │  teal    │ │ teal ││
│  └──────────┘ └──────────┘ └──────┘│
└─────────────────────────────────────┘
```

**Colors**:
- Total: Gray (#3A3E40)
- Rented: Teal (#0E7C69)
- Available: Teal (#0E7C69)

#### Order Stats Card

```
┌─────────────────────────────────────┐
│ 📋 إحصائيات الطلبات         [chart.svg]│
├─────────────────────────────────────┤
│  ┌──────────┐ ┌──────────┐ ┌──────┐│
│  │   450    │ │    25    │ │ 425  ││
│  │ الإجمالي  │ │قيد المعالجة│مكتملة││
│  │   gray   │ │  green   │ │orange││
│  └──────────┘ └──────────┘ └──────┘│
└─────────────────────────────────────┘
```

**Colors**:
- Total: Gray
- Pending: Green (#1DC411)
- Completed: Orange (#E38214)

#### Driver Stats Card

```
┌─────────────────────────────────────┐
│ 🚛 إحصائيات السائقين  [front-truck.svg]│
├─────────────────────────────────────┤
│  ┌────────────────┐ ┌─────────────┐│
│  │  👤  12        │ │  📊 94.5%   ││
│  │ عدد السائقين   │ │نسبة الإنجاز ││
│  │                │ │             ││
│  │                │ │  [Progress  ││
│  │                │ │   Bar]      ││
│  └────────────────┘ └─────────────┘│
└─────────────────────────────────────┘
```

**Background**: Primary color (#0E7C69 with opacity)
**Text**: White or light colors
**Progress Bar**: Shows completion rate visually

### Monthly Chart Design

```
┌─────────────────────────────────────┐
│ 📊 الإحصائيات الشهرية للطلبات والإيرادات│
├─────────────────────────────────────┤
│                                     │
│  [Line Chart]                       │
│   - Orange line: Orders (requests)  │
│   - Teal area: Revenue (thousands)  │
│                                     │
│  Y-axis: Values                     │
│  X-axis: Month names (Arabic)       │
│                                     │
│  Legend:                            │
│  ━━ الطلبات    ━━ الإيرادات (بالآلاف)│
│                                     │
└─────────────────────────────────────┘
```

**Chart Type**: Line + Area combination
- **Orders**: Orange line (#FB923C) with dots
- **Revenue**: Teal area (#14B8A6) with gradient fill
- **Tooltip**: Shows month name + values on tap
- **Responsive**: Scrollable horizontally if needed

---

## Flutter Models

### 1. Dashboard Stats Model

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_stats.freezed.dart';
part 'dashboard_stats.g.dart';

@freezed
class DashboardStats with _$DashboardStats {
  const factory DashboardStats({
    required ContainerStats containerStats,
    required OrderStats orderStats,
    required DriverStats driverStats,
    required List<MonthlyData> monthlyData,
    required CurrentMonth currentMonth,
  }) = _DashboardStats;

  factory DashboardStats.fromJson(Map<String, dynamic> json) =>
      _$DashboardStatsFromJson(json);
}
```

### 2. Container Stats Model

```dart
@freezed
class ContainerStats with _$ContainerStats {
  const factory ContainerStats({
    required int total,
    required int rented,
    required int available,
  }) = _ContainerStats;

  factory ContainerStats.fromJson(Map<String, dynamic> json) =>
      _$ContainerStatsFromJson(json);
}
```

### 3. Order Stats Model

```dart
@freezed
class OrderStats with _$OrderStats {
  const factory OrderStats({
    required int total,
    required int pending,
    required int completed,
  }) = _OrderStats;

  factory OrderStats.fromJson(Map<String, dynamic> json) =>
      _$OrderStatsFromJson(json);
}
```

### 4. Driver Stats Model

```dart
@freezed
class DriverStats with _$DriverStats {
  const factory DriverStats({
    required int total,
    required double completionRate,
  }) = _DriverStats;

  factory DriverStats.fromJson(Map<String, dynamic> json) =>
      _$DriverStatsFromJson(json);
}
```

### 5. Monthly Data Model

```dart
@freezed
class MonthlyData with _$MonthlyData {
  const factory MonthlyData({
    required String month,
    required int requests,
    required double revenue,
  }) = _MonthlyData;

  factory MonthlyData.fromJson(Map<String, dynamic> json) =>
      _$MonthlyDataFromJson(json);
}
```

### 6. Current Month Model

```dart
@freezed
class CurrentMonth with _$CurrentMonth {
  const factory CurrentMonth({
    required int orders,
    required double revenue,
    required String month,
  }) = _CurrentMonth;

  factory CurrentMonth.fromJson(Map<String, dynamic> json) =>
      _$CurrentMonthFromJson(json);
}
```

---

## API Service

```dart
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardApiService {
  final Dio _dio;
  static const String _baseUrl = '/api/company/dashboard';

  DashboardApiService(this._dio);

  /// Fetch all dashboard statistics
  Future<DashboardStats> getDashboardStats() async {
    try {
      final response = await _dio.get('$_baseUrl/stats');
      return DashboardStats.fromJson(response.data['data']);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to fetch dashboard statistics';
    }
  }
}

// Provider
final dashboardApiServiceProvider = Provider<DashboardApiService>((ref) {
  final dio = ref.watch(dioProvider); // Assumes you have a configured Dio provider
  return DashboardApiService(dio);
});
```

---

## State Management (Riverpod)

### Dashboard State

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

// State
@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    DashboardStats? stats,
    @Default(false) bool isLoading,
    String? error,
  }) = _DashboardState;
}

// Notifier
class DashboardNotifier extends StateNotifier<DashboardState> {
  final DashboardApiService _apiService;

  DashboardNotifier(this._apiService) : super(const DashboardState());

  /// Fetch dashboard statistics
  Future<void> fetchDashboardStats() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final stats = await _apiService.getDashboardStats();
      state = state.copyWith(stats: stats, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  /// Refresh dashboard (for pull-to-refresh)
  Future<void> refresh() async {
    await fetchDashboardStats();
  }

  /// Clear error
  void clearError() {
    state = state.copyWith(error: null);
  }
}

// Provider
final dashboardProvider = StateNotifierProvider<DashboardNotifier, DashboardState>((ref) {
  final apiService = ref.watch(dashboardApiServiceProvider);
  return DashboardNotifier(apiService);
});
```

---

## UI Implementation Patterns

### 1. Dashboard Screen Structure

```dart
class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    // Fetch dashboard stats on screen load
    Future.microtask(() => ref.read(dashboardProvider.notifier).fetchDashboardStats());
  }

  @override
  Widget build(BuildContext context) {
    final dashboardState = ref.watch(dashboardProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.read(dashboardProvider.notifier).refresh(),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.read(dashboardProvider.notifier).refresh(),
        child: dashboardState.isLoading && dashboardState.stats == null
            ? const Center(child: CircularProgressIndicator())
            : dashboardState.error != null && dashboardState.stats == null
                ? ErrorView(
                    error: dashboardState.error!,
                    onRetry: () => ref.read(dashboardProvider.notifier).fetchDashboardStats(),
                  )
                : SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        ContainerStatsCard(stats: dashboardState.stats!.containerStats),
                        const SizedBox(height: 16),
                        OrderStatsCard(stats: dashboardState.stats!.orderStats),
                        const SizedBox(height: 16),
                        DriverStatsCard(stats: dashboardState.stats!.driverStats),
                        const SizedBox(height: 16),
                        MonthlyChartCard(data: dashboardState.stats!.monthlyData),
                      ],
                    ),
                  ),
      ),
    );
  }
}
```

### 2. Container Stats Card

```dart
class ContainerStatsCard extends StatelessWidget {
  final ContainerStats stats;

  const ContainerStatsCard({required this.stats});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/icons/truck.svg', width: 32, height: 32),
                const Text(
                  'إحصائيات الحاويات',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Stats Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _StatItem(
                  value: stats.total.toString(),
                  label: 'الإجمالي',
                  color: Colors.grey[700]!,
                ),
                _StatItem(
                  value: stats.rented.toString(),
                  label: 'المؤجرة',
                  color: const Color(0xFF0E7C69),
                ),
                _StatItem(
                  value: stats.available.toString(),
                  label: 'المتوفرة',
                  color: const Color(0xFF0E7C69),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;
  final Color color;

  const _StatItem({
    required this.value,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
```

### 3. Order Stats Card

```dart
class OrderStatsCard extends StatelessWidget {
  final OrderStats stats;

  const OrderStatsCard({required this.stats});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/icons/chart.svg', width: 32, height: 32),
                const Text(
                  'إحصائيات الطلبات',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Stats Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _StatItem(
                  value: stats.total.toString(),
                  label: 'الإجمالي',
                  color: Colors.grey[700]!,
                ),
                _StatItem(
                  value: stats.pending.toString(),
                  label: 'قيد المعالجة',
                  color: const Color(0xFF1DC411), // Green
                ),
                _StatItem(
                  value: stats.completed.toString(),
                  label: 'مكتملة',
                  color: const Color(0xFFE38214), // Orange
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

### 4. Driver Stats Card (with Progress Bar)

```dart
class DriverStatsCard extends StatelessWidget {
  final DriverStats stats;

  const DriverStatsCard({required this.stats});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: const Color(0xFF0E7C69).withOpacity(0.85), // Primary color
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/icons/front-truck.svg',
                  width: 32,
                  height: 32,
                  color: Colors.white,
                ),
                const Text(
                  'إحصائيات السائقين',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Stats Row
            Row(
              children: [
                // Total Drivers
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.person, color: Color(0xFFF9D9B6), size: 28),
                          const SizedBox(width: 8),
                          Text(
                            stats.total.toString(),
                            style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF9D9B6),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'عدد السائقين',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                
                // Completion Rate
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.percent, color: Color(0xFFF9D9B6), size: 28),
                          const SizedBox(width: 8),
                          Text(
                            '${stats.completionRate.toStringAsFixed(1)}%',
                            style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF9D9B6),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'نسبة الإنجاز',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      const SizedBox(height: 8),
                      
                      // Progress bar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          value: stats.completionRate / 100,
                          backgroundColor: Colors.white.withOpacity(0.3),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Color(0xFFF9D9B6),
                          ),
                          minHeight: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

### 5. Monthly Chart Card

```dart
import 'package:fl_chart/fl_chart.dart';

class MonthlyChartCard extends StatelessWidget {
  final List<MonthlyData> data;

  const MonthlyChartCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/icons/bar-chart.svg', width: 32, height: 32),
                const Expanded(
                  child: Text(
                    'الإحصائيات الشهرية للطلبات والإيرادات',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            
            // Chart
            SizedBox(
              height: 300,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: true, drawVerticalLine: false),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          if (value.toInt() >= 0 && value.toInt() < data.length) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                data[value.toInt()].month,
                                style: const TextStyle(fontSize: 10),
                              ),
                            );
                          }
                          return const Text('');
                        },
                        interval: 1,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: true, reservedSize: 40),
                    ),
                    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    // Revenue line (teal with area fill)
                    LineChartBarData(
                      spots: data.asMap().entries.map((e) {
                        return FlSpot(e.key.toDouble(), e.value.revenue);
                      }).toList(),
                      isCurved: true,
                      color: const Color(0xFF14B8A6),
                      barWidth: 3,
                      dotData: FlDotData(show: true),
                      belowBarData: BarAreaData(
                        show: true,
                        color: const Color(0xFF14B8A6).withOpacity(0.2),
                      ),
                    ),
                    // Requests line (orange)
                    LineChartBarData(
                      spots: data.asMap().entries.map((e) {
                        return FlSpot(e.key.toDouble(), e.value.requests.toDouble());
                      }).toList(),
                      isCurved: true,
                      color: const Color(0xFFFB923C),
                      barWidth: 3,
                      dotData: FlDotData(show: true),
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                  lineTouchData: LineTouchData(
                    touchTooltipData: LineTouchTooltipData(
                      tooltipBgColor: Colors.white,
                      getTooltipItems: (touchedSpots) {
                        return touchedSpots.map((spot) {
                          final monthData = data[spot.x.toInt()];
                          final isRevenue = spot.barIndex == 0;
                          return LineTooltipItem(
                            '${monthData.month}\n',
                            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: isRevenue
                                    ? 'الإيرادات: ${spot.y.toStringAsFixed(0)}k ر.س'
                                    : 'الطلبات: ${spot.y.toStringAsFixed(0)}',
                                style: TextStyle(
                                  color: isRevenue
                                      ? const Color(0xFF14B8A6)
                                      : const Color(0xFFFB923C),
                                ),
                              ),
                            ],
                          );
                        }).toList();
                      },
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Legend
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _LegendItem(
                  color: const Color(0xFF14B8A6),
                  label: 'الإيرادات (بالآلاف)',
                ),
                const SizedBox(width: 24),
                _LegendItem(
                  color: const Color(0xFFFB923C),
                  label: 'الطلبات',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;

  const _LegendItem({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 3,
          color: color,
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: TextStyle(fontSize: 12, color: Colors.grey[600]),
        ),
      ],
    );
  }
}
```

### 6. Error View Widget

```dart
class ErrorView extends StatelessWidget {
  final String error;
  final VoidCallback onRetry;

  const ErrorView({required this.error, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              'خطأ في تحميل البيانات',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              error,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('إعادة المحاولة'),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

## Implementation Checklist

### Setup
- [ ] Install required packages (freezed, riverpod, dio, fl_chart)
- [ ] Generate freezed models (`flutter pub run build_runner build`)
- [ ] Configure Dio with base URL and auth interceptors
- [ ] Add icon assets (truck.svg, chart.svg, front-truck.svg, bar-chart.svg)

### Models
- [ ] Create `DashboardStats` model with freezed
- [ ] Create `ContainerStats` model
- [ ] Create `OrderStats` model
- [ ] Create `DriverStats` model
- [ ] Create `MonthlyData` model
- [ ] Create `CurrentMonth` model
- [ ] Generate JSON serialization code

### API Service
- [ ] Implement `DashboardApiService` class
- [ ] Add `getDashboardStats()` method
- [ ] Create provider for API service
- [ ] Test API endpoint with sample data

### State Management
- [ ] Create `DashboardState` with freezed
- [ ] Implement `DashboardNotifier` with fetch and refresh methods
- [ ] Create `dashboardProvider`
- [ ] Test state updates

### Dashboard Screen
- [ ] Create `DashboardScreen` widget
- [ ] Implement AppBar with refresh button
- [ ] Add RefreshIndicator for pull-to-refresh
- [ ] Fetch dashboard stats on screen load
- [ ] Show loading spinner during initial fetch
- [ ] Display error view if API fails with retry button
- [ ] Implement SingleChildScrollView with stats cards

### Stat Cards
- [ ] Create `ContainerStatsCard` widget
  - [ ] Add header with icon and title
  - [ ] Display 3 stats: total, rented, available
  - [ ] Apply correct colors (gray, teal, teal)
- [ ] Create `OrderStatsCard` widget
  - [ ] Add header with icon and title
  - [ ] Display 3 stats: total, pending, completed
  - [ ] Apply correct colors (gray, green, orange)
- [ ] Create `DriverStatsCard` widget
  - [ ] Add header with icon and title
  - [ ] Display total drivers count
  - [ ] Display completion rate percentage
  - [ ] Add linear progress bar for completion rate
  - [ ] Use primary color background with white text

### Monthly Chart
- [ ] Create `MonthlyChartCard` widget
- [ ] Integrate fl_chart package
- [ ] Implement line chart with 2 data series
  - [ ] Revenue: Teal line with area fill
  - [ ] Requests: Orange line only
- [ ] Add X-axis labels (month names in Arabic)
- [ ] Add Y-axis labels (values)
- [ ] Implement touch tooltip showing month + values
- [ ] Add legend at bottom (2 items)
- [ ] Make chart scrollable if needed

### UI Polish
- [ ] Ensure RTL layout for Arabic text
- [ ] Test responsive layout on different screen sizes
- [ ] Add proper spacing between cards (16px)
- [ ] Ensure consistent card elevation and border radius
- [ ] Test pull-to-refresh functionality
- [ ] Verify loading states work correctly
- [ ] Test error state with retry button

### Testing
- [ ] Test dashboard loading on app launch
- [ ] Test pull-to-refresh functionality
- [ ] Test error handling (network failure)
- [ ] Test retry button functionality
- [ ] Verify all stats display correctly
- [ ] Test monthly chart interactivity (tooltips)
- [ ] Test with different data values (zero, large numbers)
- [ ] Verify chart legend displays correctly

---

## Required Packages

Add to `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  
  # State Management
  flutter_riverpod: ^2.4.0
  
  # Networking
  dio: ^5.4.0
  
  # JSON Serialization
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1
  
  # Charts
  fl_chart: ^0.66.0
  
dev_dependencies:
  # Code Generation
  build_runner: ^2.4.6
  freezed: ^2.4.5
  json_serializable: ^6.7.1
```

---

## Summary

This guide provides complete specifications for implementing the Dashboard screen in Flutter:

✅ **1 API Endpoint**: `GET /api/company/dashboard/stats`  
✅ **6 Data Models**: DashboardStats, ContainerStats, OrderStats, DriverStats, MonthlyData, CurrentMonth  
✅ **4 Stat Cards**: Containers, Orders, Drivers, Monthly Chart  
✅ **Card-Based UI**: Modern design without circular charts (as requested)  
✅ **Color Coding**: Specific colors for each stat type  
✅ **Monthly Chart**: Line + Area chart with 12 months data  
✅ **Pull-to-Refresh**: Easy data refresh functionality  
✅ **Loading & Error States**: Proper handling with retry option  
✅ **RTL Support**: Arabic text and layout direction  

**Key Design Choices**:
- ❌ No circular/donut charts (replaced with clean number displays)
- ✅ Card-based modern UI with clear stat sections
- ✅ Driver card uses progress bar for completion rate
- ✅ Chart uses fl_chart for smooth mobile experience
- ✅ Single API call fetches all dashboard data
- ✅ Pull-to-refresh for easy updates

**Implementation Notes**:
1. Dashboard fetches on screen load automatically
2. All cards are reusable components
3. Chart data is 12 months (current year)
4. Revenue is in thousands (display as "Xk ر.س")
5. Completion rate shows as percentage with visual progress bar
6. Error state allows retry without app restart
7. Pull-to-refresh provides manual refresh option
8. Loading spinner shows during initial data fetch
