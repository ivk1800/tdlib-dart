import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The mask is placed relatively to the chin
@immutable
class MaskPointChin extends MaskPoint {
  const MaskPointChin();

  static const String constructor = 'maskPointChin';

  static MaskPointChin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointChin();
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
