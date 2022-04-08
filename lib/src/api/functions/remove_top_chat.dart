import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a chat from the list of frequently used chats. Supported only if
/// the chat info database is enabled
/// Returns [Ok]
@immutable
class RemoveTopChat extends TdFunction {
  const RemoveTopChat({
    required this.category,
    required this.chatId,
  });

  /// [category] Category of frequently used chats
  final TopChatCategory category;

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'removeTopChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'category': category.toJson(),
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
