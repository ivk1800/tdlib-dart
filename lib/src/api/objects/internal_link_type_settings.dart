import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to app settings
@immutable
class InternalLinkTypeSettings extends InternalLinkType {
  const InternalLinkTypeSettings();

  static const String constructor = 'internalLinkTypeSettings';

  static InternalLinkTypeSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeSettings();
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
