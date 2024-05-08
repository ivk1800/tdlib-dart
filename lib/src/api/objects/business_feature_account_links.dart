import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to create links to the business account with predefined
/// message text
@immutable
class BusinessFeatureAccountLinks extends BusinessFeature {
  const BusinessFeatureAccountLinks();

  static const String constructor = 'businessFeatureAccountLinks';

  static BusinessFeatureAccountLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureAccountLinks();
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
