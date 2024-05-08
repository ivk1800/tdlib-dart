import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A phone number
@immutable
class CollectibleItemTypePhoneNumber extends CollectibleItemType {
  const CollectibleItemTypePhoneNumber({
    required this.phoneNumber,
  });

  /// [phoneNumber] The phone number
  final String phoneNumber;

  static const String constructor = 'collectibleItemTypePhoneNumber';

  static CollectibleItemTypePhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CollectibleItemTypePhoneNumber(
      phoneNumber: json['phone_number'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
