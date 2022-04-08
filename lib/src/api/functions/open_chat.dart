import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that the chat is opened by the user. Many useful activities
/// depend on the chat being opened or closed (e.g., in supergroups and
/// channels all updates are received only for opened chats)
/// Returns [Ok]
@immutable
class OpenChat extends TdFunction {
  const OpenChat({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'openChat';

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
