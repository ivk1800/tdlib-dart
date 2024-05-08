import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes the connected business bot from a specific chat by adding the chat
/// to businessRecipients.excluded_chat_ids
/// Returns [Ok]
@immutable
class RemoveBusinessConnectedBotFromChat extends TdFunction {
  const RemoveBusinessConnectedBotFromChat({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'removeBusinessConnectedBotFromChat';

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
