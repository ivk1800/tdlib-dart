import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a transaction with a supergroup or a channel chat
@immutable
class StarTransactionPartnerChat extends StarTransactionPartner {
  const StarTransactionPartnerChat({
    required this.chatId,
    required this.purpose,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [purpose] Purpose of the transaction
  final ChatTransactionPurpose purpose;

  static const String constructor = 'starTransactionPartnerChat';

  static StarTransactionPartnerChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionPartnerChat(
      chatId: json['chat_id'] as int,
      purpose: ChatTransactionPurpose.fromJson(
          json['purpose'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'purpose': purpose.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
