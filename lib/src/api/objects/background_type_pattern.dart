import '../tdapi.dart';

/// A PNG or TGV (gzipped subset of SVG with MIME type
/// "application/x-tgwallpattern") pattern to be combined with the background
/// fill chosen by the user
class BackgroundTypePattern extends BackgroundType {
  BackgroundTypePattern(
      {required this.fill, required this.intensity, required this.isMoving});

  /// [fill] Description of the background fill
  final BackgroundFill fill;

  /// [intensity] Intensity of the pattern when it is shown above the filled
  /// background; 0-100
  final int intensity;

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
        isMoving: json['is_moving']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'fill': this.fill.toJson(),
        'intensity': this.intensity,
        'is_moving': this.isMoving,
        '@type': CONSTRUCTOR
      };
}
