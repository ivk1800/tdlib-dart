import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The medium video quality
class GroupCallVideoQualityMedium extends GroupCallVideoQuality {
  const GroupCallVideoQualityMedium();

  static const String CONSTRUCTOR = 'groupCallVideoQualityMedium';

  static GroupCallVideoQualityMedium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GroupCallVideoQualityMedium();
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
