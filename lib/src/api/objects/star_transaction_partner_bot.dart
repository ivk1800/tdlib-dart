import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a transaction with a bot
@immutable
class StarTransactionPartnerBot extends StarTransactionPartner {
  const StarTransactionPartnerBot({
    required this.userId,
    required this.purpose,
  });

  /// [userId] Identifier of the bot
  final int userId;

  /// [purpose] Purpose of the transaction
  final BotTransactionPurpose purpose;

  static const String constructor = 'starTransactionPartnerBot';

  static StarTransactionPartnerBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionPartnerBot(
      userId: json['user_id'] as int,
      purpose: BotTransactionPurpose.fromJson(
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
