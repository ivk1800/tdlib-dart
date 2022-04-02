import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The mask is placed relatively to the mouth
class MaskPointMouth extends MaskPoint {
  const MaskPointMouth();

  static const String CONSTRUCTOR = 'maskPointMouth';

  static MaskPointMouth? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointMouth();
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
