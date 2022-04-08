import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The mask is placed relatively to the mouth
@immutable
class MaskPointMouth extends MaskPoint {
  const MaskPointMouth();

  static const String constructor = 'maskPointMouth';

  static MaskPointMouth? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointMouth();
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
