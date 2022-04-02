import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The link is a link to a theme. TDLib has no theme support yet
class InternalLinkTypeTheme extends InternalLinkType {
  InternalLinkTypeTheme({required this.themeName});

  /// [themeName] Name of the theme
  final String themeName;

  static const String CONSTRUCTOR = 'internalLinkTypeTheme';

  static InternalLinkTypeTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeTheme(themeName: json['theme_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'theme_name': this.themeName, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
