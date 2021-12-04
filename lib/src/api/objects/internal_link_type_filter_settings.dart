import '../tdapi.dart';

/// The link is a link to the filter settings section of the app
class InternalLinkTypeFilterSettings extends InternalLinkType {
  const InternalLinkTypeFilterSettings();

  static const String CONSTRUCTOR = 'internalLinkTypeFilterSettings';

  static InternalLinkTypeFilterSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeFilterSettings();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
