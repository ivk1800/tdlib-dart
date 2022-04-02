import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The link is a link to the active sessions section of the app. Use
/// getActiveSessions to handle the link
class InternalLinkTypeActiveSessions extends InternalLinkType {
  const InternalLinkTypeActiveSessions();

  static const String CONSTRUCTOR = 'internalLinkTypeActiveSessions';

  static InternalLinkTypeActiveSessions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeActiveSessions();
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
