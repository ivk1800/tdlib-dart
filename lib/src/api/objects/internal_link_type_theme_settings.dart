import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
