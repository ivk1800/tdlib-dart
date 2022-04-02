import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The worst available video quality
class GroupCallVideoQualityThumbnail extends GroupCallVideoQuality {
  const GroupCallVideoQualityThumbnail();

  static const String CONSTRUCTOR = 'groupCallVideoQualityThumbnail';

  static GroupCallVideoQualityThumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GroupCallVideoQualityThumbnail();
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
