import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a list of administrators of the chat with their custom titles
/// Returns [ChatAdministrators]
@immutable
class GetChatAdministrators extends TdFunction {
  const GetChatAdministrators({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'getChatAdministrators';

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
