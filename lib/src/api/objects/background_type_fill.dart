import '../tdapi.dart';

/// A filled background
class BackgroundTypeFill extends BackgroundType {
  BackgroundTypeFill({required this.fill});

  /// [fill] The background fill
  final BackgroundFill fill;

  static const String CONSTRUCTOR = 'backgroundTypeFill';

  static BackgroundTypeFill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundTypeFill(fill: BackgroundFill.fromJson(json['fill'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'fill': this.fill.toJson(), '@type': CONSTRUCTOR};
}
