import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the filter section of the app settings
@immutable
class InternalLinkTypeFilterSettings extends InternalLinkType {
  const InternalLinkTypeFilterSettings();

  static const String constructor = 'internalLinkTypeFilterSettings';

  static InternalLinkTypeFilterSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeFilterSettings();
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
