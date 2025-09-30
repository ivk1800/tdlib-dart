import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a transfer of Telegram Stars to a business bot; for
/// regular users only
@immutable
class StarTransactionTypeBusinessBotTransferSend extends StarTransactionType {
  const StarTransactionTypeBusinessBotTransferSend({required this.userId});

  /// [userId] Identifier of the bot that received Telegram Stars
  final int userId;

  static const String constructor =
      'starTransactionTypeBusinessBotTransferSend';

  static StarTransactionTypeBusinessBotTransferSend? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBusinessBotTransferSend(
      userId: json['user_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
