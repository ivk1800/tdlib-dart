import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The mask is placed relatively to the eyes
@immutable
class MaskPointEyes extends MaskPoint {
  const MaskPointEyes();

  static const String constructor = 'maskPointEyes';

  static MaskPointEyes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointEyes();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
