import '../tdapi.dart';

/// A point on a Cartesian plane
class Point extends TdObject {
  Point({required this.x, required this.y});

  /// [x] The point's first coordinate
  final double x;

  /// [y] The point's second coordinate
  final double y;

  static const String CONSTRUCTOR = 'point';

  static Point? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Point(x: json['x'], y: json['y']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'x': this.x, 'y': this.y, '@type': CONSTRUCTOR};
}
