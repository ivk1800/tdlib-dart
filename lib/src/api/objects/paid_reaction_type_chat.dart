import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A paid reaction on behalf of an owned chat
@immutable
class PaidReactionTypeChat extends PaidReactionType {
  const PaidReactionTypeChat({required this.chatId});

  /// [chatId] Identifier of the chat
  final int chatId;

  static const String constructor = 'paidReactionTypeChat';

  static PaidReactionTypeChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaidReactionTypeChat(chatId: json['chat_id'] as int);
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
