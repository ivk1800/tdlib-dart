import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The mask is placed relatively to the forehead
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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
