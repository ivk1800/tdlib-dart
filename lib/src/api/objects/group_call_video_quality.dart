import '../tdapi.dart';

/// Describes the quality of a group call video
abstract class GroupCallVideoQuality extends TdObject {
  const GroupCallVideoQuality();

  static const String CONSTRUCTOR = 'groupCallVideoQuality';

  /// Inherited by:
  /// [GroupCallVideoQualityThumbnail]
  /// [GroupCallVideoQualityMedium]
  /// [GroupCallVideoQualityFull]
  static GroupCallVideoQuality? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case GroupCallVideoQualityThumbnail.CONSTRUCTOR:
        return GroupCallVideoQualityThumbnail.fromJson(json);
      case GroupCallVideoQualityMedium.CONSTRUCTOR:
        return GroupCallVideoQualityMedium.fromJson(json);
      case GroupCallVideoQualityFull.CONSTRUCTOR:
        return GroupCallVideoQualityFull.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
