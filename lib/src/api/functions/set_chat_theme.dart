import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the chat theme. Supported only in private and secret chats
/// Returns [Ok]
@immutable
class SetChatTheme extends TdFunction {
  const SetChatTheme({
    required this.chatId,
    required this.themeName,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [themeName] Name of the new chat theme; pass an empty string to return the
  /// default theme
  final String themeName;

  static const String constructor = 'setChatTheme';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'theme_name': themeName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
