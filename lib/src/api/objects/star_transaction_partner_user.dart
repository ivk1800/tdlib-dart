import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a transaction with another user
@immutable
class StarTransactionPartnerUser extends StarTransactionPartner {
  const StarTransactionPartnerUser({
    required this.userId,
    required this.purpose,
  });

  /// [userId] Identifier of the user; 0 if the user was anonymous
  final int userId;

  /// [purpose] Purpose of the transaction
  final UserTransactionPurpose purpose;

  static const String constructor = 'starTransactionPartnerUser';

  static StarTransactionPartnerUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionPartnerUser(
      userId: json['user_id'] as int,
      purpose: UserTransactionPurpose.fromJson(
          json['purpose'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'purpose': purpose.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
