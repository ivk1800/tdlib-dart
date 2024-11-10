import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The current user sold a gift received from another user
@immutable
class UserTransactionPurposeGiftSell extends UserTransactionPurpose {
  const UserTransactionPurposeGiftSell({
    required this.gift,
  });

  /// [gift] The gift
  final Gift gift;

  static const String constructor = 'userTransactionPurposeGiftSell';

  static UserTransactionPurposeGiftSell? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserTransactionPurposeGiftSell(
      gift: Gift.fromJson(json['gift'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift': gift.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
