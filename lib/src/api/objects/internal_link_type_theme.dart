import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a theme. TDLib has no theme support yet
@immutable
class InternalLinkTypeTheme extends InternalLinkType {
  const InternalLinkTypeTheme({
    required this.themeName,
  });

  /// [themeName] Name of the theme
  final String themeName;

  static const String constructor = 'internalLinkTypeTheme';

  static InternalLinkTypeTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeTheme(
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
