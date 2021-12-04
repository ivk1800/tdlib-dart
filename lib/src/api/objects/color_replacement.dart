import '../tdapi.dart';

/// Describes a color replacement for animated emoji
class ColorReplacement extends TdObject {
  ColorReplacement({required this.oldColor, required this.newColor});

  /// [oldColor] Original animated emoji color in the RGB24 format
  final int oldColor;

  /// [newColor] Replacement animated emoji color in the RGB24 format
  final int newColor;

  static const String CONSTRUCTOR = 'colorReplacement';

  static ColorReplacement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ColorReplacement(
        oldColor: json['old_color'], newColor: json['new_color']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_color': this.oldColor,
        'new_color': this.newColor,
        '@type': CONSTRUCTOR
      };
}
