import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The link is a link to an unsupported proxy. An alert can be shown to the
/// user
class InternalLinkTypeUnsupportedProxy extends InternalLinkType {
  const InternalLinkTypeUnsupportedProxy();

  static const String CONSTRUCTOR = 'internalLinkTypeUnsupportedProxy';

  static InternalLinkTypeUnsupportedProxy? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeUnsupportedProxy();
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
