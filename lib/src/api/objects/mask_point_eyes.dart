import '../tdapi.dart';

/// The mask is placed relatively to the eyes
class MaskPointEyes extends MaskPoint {
  const MaskPointEyes();

  static const String CONSTRUCTOR = 'maskPointEyes';

  static MaskPointEyes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointEyes();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
