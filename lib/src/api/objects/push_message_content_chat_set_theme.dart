import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat theme was edited
@immutable
class PushMessageContentChatSetTheme extends PushMessageContent {
  const PushMessageContentChatSetTheme({
    required this.themeName,
  });

  /// [themeName] If non-empty, name of a new theme, set for the chat.
  /// Otherwise, the chat theme was reset to the default one
  final String themeName;

  static const String constructor = 'pushMessageContentChatSetTheme';

  static PushMessageContentChatSetTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatSetTheme(
      themeName: json['theme_name'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'theme_name': themeName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
