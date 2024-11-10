import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the theme section of the application settings
@immutable
class InternalLinkTypeThemeSettings extends InternalLinkType {
  const InternalLinkTypeThemeSettings();

  static const String constructor = 'internalLinkTypeThemeSettings';

  static InternalLinkTypeThemeSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeThemeSettings();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
