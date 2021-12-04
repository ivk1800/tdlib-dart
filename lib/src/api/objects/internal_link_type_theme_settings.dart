import '../tdapi.dart';

/// The link is a link to the theme settings section of the app
class InternalLinkTypeThemeSettings extends InternalLinkType {
  const InternalLinkTypeThemeSettings();

  static const String CONSTRUCTOR = 'internalLinkTypeThemeSettings';

  static InternalLinkTypeThemeSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeThemeSettings();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
