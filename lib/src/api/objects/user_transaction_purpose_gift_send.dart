import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The current user sent a gift to another user
@immutable
class UserTransactionPurposeGiftSend extends UserTransactionPurpose {
  const UserTransactionPurposeGiftSend({
    required this.gift,
  });

  /// [gift] The gift
  final Gift gift;

  static const String constructor = 'userTransactionPurposeGiftSend';

  static UserTransactionPurposeGiftSend? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserTransactionPurposeGiftSend(
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
