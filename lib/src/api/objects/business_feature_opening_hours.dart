import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to set opening hours
@immutable
class BusinessFeatureOpeningHours extends BusinessFeature {
  const BusinessFeatureOpeningHours();

  static const String constructor = 'businessFeatureOpeningHours';

  static BusinessFeatureOpeningHours? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureOpeningHours();
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
