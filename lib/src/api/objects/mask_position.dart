import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Position on a photo where a mask is placed
@immutable
class MaskPosition extends TdObject {
  const MaskPosition({
    required this.point,
    required this.xShift,
    required this.yShift,
    required this.scale,
  });

  /// [point] Part of the face, relative to which the mask is placed
  final MaskPoint point;

  /// [xShift] Shift by X-axis measured in widths of the mask scaled to the face
  /// size, from left to right. (For example, -1.0 will place the mask just to
  /// the left of the default mask position)
  final double xShift;

  /// [yShift] Shift by Y-axis measured in heights of the mask scaled to the
  /// face size, from top to bottom. (For example, 1.0 will place the mask just
  /// below the default mask position)
  final double yShift;

  /// [scale] Mask scaling coefficient. (For example, 2.0 means a doubled size)
  final double scale;

  static const String constructor = 'maskPosition';

  static MaskPosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MaskPosition(
      point: MaskPoint.fromJson(json['point'] as Map<String, dynamic>?)!,
      xShift: (json['x_shift'] as num).toDouble(),
      yShift: (json['y_shift'] as num).toDouble(),
      scale: (json['scale'] as num).toDouble(),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'point': point.toJson(),
        'x_shift': xShift,
        'y_shift': yShift,
        'scale': scale,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
