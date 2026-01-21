import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver.freezed.dart';
part 'driver.g.dart';

@freezed
class Driver with _$Driver {
  const factory Driver({
    required String id,
    required String name,
    required String phone,
    String? email,
    required String availability,
    String? identityNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}

// Extension for UI helpers
extension DriverX on Driver {
  String get availabilityLabel {
    switch (availability) {
      case 'available':
        return 'متاح';
      case 'on_duty':
        return 'في الخدمة';
      case 'off_duty':
        return 'خارج الخدمة';
      case 'on_break':
        return 'في استراحة';
      default:
        return availability;
    }
  }

  Color get statusColor {
    switch (availability) {
      case 'available':
        return Colors.green;
      case 'on_duty':
        return Colors.blue;
      case 'off_duty':
        return Colors.orange;
      case 'on_break':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }
}
