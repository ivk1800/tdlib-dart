import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Order information
@immutable
class OrderInfo extends TdObject {
  const OrderInfo({
    required this.name,
    required this.phoneNumber,
    required this.emailAddress,
    this.shippingAddress,
  });

  /// [name] Name of the user
  final String name;

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  /// [emailAddress] Email address of the user
  final String emailAddress;

  /// [shippingAddress] Shipping address for this order; may be null
  final Address? shippingAddress;

  static const String constructor = 'orderInfo';

  static OrderInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrderInfo(
      name: json['name'] as String,
      phoneNumber: json['phone_number'] as String,
      emailAddress: json['email_address'] as String,
      shippingAddress:
          Address.fromJson(json['shipping_address'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'phone_number': phoneNumber,
        'email_address': emailAddress,
        'shipping_address': shippingAddress?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
