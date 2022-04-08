import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A point on a Cartesian plane
@immutable
class Point extends TdObject {
  const Point({
    required this.x,
    required this.y,
  });

  /// [x] The point's first coordinate
  final double x;

  /// [y] The point's second coordinate
  final double y;

  static const String constructor = 'point';

  static Point? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Point(
      x: json['x'],
      y: json['y'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'x': x,
        'y': y,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
