import '../tdapi.dart';

/// A mask should be placed relatively to the forehead
class MaskPointForehead extends MaskPoint {
  const MaskPointForehead();

  static const String CONSTRUCTOR = 'maskPointForehead';

  static MaskPointForehead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointForehead();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
