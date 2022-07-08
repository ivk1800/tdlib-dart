import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the active sessions section of the application. Use
/// getActiveSessions to handle the link
@immutable
class InternalLinkTypeActiveSessions extends InternalLinkType {
  const InternalLinkTypeActiveSessions();

  static const String constructor = 'internalLinkTypeActiveSessions';

  static InternalLinkTypeActiveSessions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeActiveSessions();
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
