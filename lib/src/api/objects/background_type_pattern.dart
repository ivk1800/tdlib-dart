import '../tdapi.dart';

/// A PNG or TGV (gzipped subset of SVG with MIME type
/// "application/x-tgwallpattern") pattern to be combined with the background
/// fill chosen by the user
class BackgroundTypePattern extends BackgroundType {
  BackgroundTypePattern(
      {required this.fill,
      required this.intensity,
      required this.isInverted,
      required this.isMoving});

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

  static const String CONSTRUCTOR = 'backgroundTypePattern';

  static BackgroundTypePattern? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundTypePattern(
        fill: BackgroundFill.fromJson(json['fill'])!,
        intensity: json['intensity'],
        isInverted: json['is_inverted'],
        isMoving: json['is_moving']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'fill': this.fill.toJson(),
        'intensity': this.intensity,
        'is_inverted': this.isInverted,
        'is_moving': this.isMoving,
        '@type': CONSTRUCTOR
      };
}
