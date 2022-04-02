import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The mask is placed relatively to the chin
class MaskPointChin extends MaskPoint {
  const MaskPointChin();

  static const String CONSTRUCTOR = 'maskPointChin';

  static MaskPointChin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointChin();
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
