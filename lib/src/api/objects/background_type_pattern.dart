import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A PNG or TGV (gzipped subset of SVG with MIME type
/// "application/x-tgwallpattern") pattern to be combined with the background
/// fill chosen by the user
@immutable
class BackgroundTypePattern extends BackgroundType {
  const BackgroundTypePattern({
    required this.fill,
    required this.intensity,
    required this.isInverted,
    required this.isMoving,
  });

  /// [fill] Fill of the background
  final BackgroundFill fill;

  /// [intensity] Intensity of the pattern when it is shown above the filled
  /// background; 0-100.
  final int intensity;

  /// [isInverted] True, if the background fill must be applied only to the
  /// pattern itself. All other pixels are black in this case. For dark themes
  /// only
  final bool isInverted;

  /// [isMoving] True, if the background needs to be slightly moved when device
  /// is tilted
  final bool isMoving;

  static const String constructor = 'backgroundTypePattern';

  static BackgroundTypePattern? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundTypePattern(
      fill: BackgroundFill.fromJson(json['fill'])!,
      intensity: json['intensity'],
      isInverted: json['is_inverted'],
      isMoving: json['is_moving'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'fill': fill.toJson(),
        'intensity': intensity,
        'is_inverted': isInverted,
        'is_moving': isMoving,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
