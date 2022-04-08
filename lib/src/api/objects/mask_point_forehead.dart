import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The mask is placed relatively to the forehead
@immutable
class MaskPointForehead extends MaskPoint {
  const MaskPointForehead();

  static const String constructor = 'maskPointForehead';

  static MaskPointForehead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointForehead();
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
