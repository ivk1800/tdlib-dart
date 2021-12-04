import '../tdapi.dart';

/// The best available video quality
class GroupCallVideoQualityFull extends GroupCallVideoQuality {
  const GroupCallVideoQualityFull();

  static const String CONSTRUCTOR = 'groupCallVideoQualityFull';

  static GroupCallVideoQualityFull? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GroupCallVideoQualityFull();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
