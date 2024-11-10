import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The revenue earned from sponsored messages in a chat has changed. If chat
/// revenue screen is opened, then getChatRevenueTransactions may be called to
/// fetch new transactions
@immutable
class UpdateChatRevenueAmount extends Update {
  const UpdateChatRevenueAmount({
    required this.chatId,
    required this.revenueAmount,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [revenueAmount] New amount of earned revenue
  final ChatRevenueAmount revenueAmount;

  static const String constructor = 'updateChatRevenueAmount';

  static UpdateChatRevenueAmount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatRevenueAmount(
      chatId: json['chat_id'] as int,
      revenueAmount: ChatRevenueAmount.fromJson(
          json['revenue_amount'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'revenue_amount': revenueAmount.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
