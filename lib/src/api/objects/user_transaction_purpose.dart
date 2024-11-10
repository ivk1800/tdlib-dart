import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes purpose of a transaction with a user
@immutable
abstract class UserTransactionPurpose extends TdObject {
  const UserTransactionPurpose();

  static const String constructor = 'userTransactionPurpose';

  /// Inherited by:
  /// [UserTransactionPurposeGiftSell]
  /// [UserTransactionPurposeGiftSend]
  /// [UserTransactionPurposeGiftedStars]
  static UserTransactionPurpose? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UserTransactionPurposeGiftSell.constructor:
        return UserTransactionPurposeGiftSell.fromJson(json);
      case UserTransactionPurposeGiftSend.constructor:
        return UserTransactionPurposeGiftSend.fromJson(json);
      case UserTransactionPurposeGiftedStars.constructor:
        return UserTransactionPurposeGiftedStars.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
