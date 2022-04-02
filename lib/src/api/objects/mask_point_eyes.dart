import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
