import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A background from a chat theme; can be used only as a chat background in
/// channels
@immutable
class BackgroundTypeChatTheme extends BackgroundType {
  const BackgroundTypeChatTheme({
    required this.themeName,
  });

  /// [themeName] Name of the chat theme
  final String themeName;

  static const String constructor = 'backgroundTypeChatTheme';

  static BackgroundTypeChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundTypeChatTheme(
      themeName: json['theme_name'] as String,
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
