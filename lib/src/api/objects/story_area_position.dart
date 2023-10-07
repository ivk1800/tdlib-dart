import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes position of a clickable rectangle area on a story media
@immutable
class StoryAreaPosition extends TdObject {
  const StoryAreaPosition({
    required this.xPercentage,
    required this.yPercentage,
    required this.widthPercentage,
    required this.heightPercentage,
    required this.rotationAngle,
  });

  /// [xPercentage] The abscissa of the rectangle's center, as a percentage of
  /// the media width
  final double xPercentage;

  /// [yPercentage] The ordinate of the rectangle's center, as a percentage of
  /// the media height
  final double yPercentage;

  /// [widthPercentage] The width of the rectangle, as a percentage of the media
  /// width
  final double widthPercentage;

  /// [heightPercentage] The height of the rectangle, as a percentage of the
  /// media height
  final double heightPercentage;

  /// [rotationAngle] Clockwise rotation angle of the rectangle, in degrees;
  /// 0-360
  final double rotationAngle;

  static const String constructor = 'storyAreaPosition';

  static StoryAreaPosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaPosition(
      xPercentage: (json['x_percentage'] as num).toDouble(),
      yPercentage: (json['y_percentage'] as num).toDouble(),
      widthPercentage: (json['width_percentage'] as num).toDouble(),
      heightPercentage: (json['height_percentage'] as num).toDouble(),
      rotationAngle: (json['rotation_angle'] as num).toDouble(),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'x_percentage': xPercentage,
        'y_percentage': yPercentage,
        'width_percentage': widthPercentage,
        'height_percentage': heightPercentage,
        'rotation_angle': rotationAngle,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
