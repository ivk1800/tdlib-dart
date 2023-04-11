import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains parameters of the application theme
@immutable
class ThemeParameters extends TdObject {
  const ThemeParameters({
    required this.backgroundColor,
    required this.secondaryBackgroundColor,
    required this.textColor,
    required this.hintColor,
    required this.linkColor,
    required this.buttonColor,
    required this.buttonTextColor,
  });

  /// [backgroundColor] A color of the background in the RGB24 format
  final int backgroundColor;

  /// [secondaryBackgroundColor] A secondary color for the background in the
  /// RGB24 format
  final int secondaryBackgroundColor;

  /// [textColor] A color of text in the RGB24 format
  final int textColor;

  /// [hintColor] A color of hints in the RGB24 format
  final int hintColor;

  /// [linkColor] A color of links in the RGB24 format
  final int linkColor;

  /// [buttonColor] A color of the buttons in the RGB24 format
  final int buttonColor;

  /// [buttonTextColor] A color of text on the buttons in the RGB24 format
  final int buttonTextColor;

  static const String constructor = 'themeParameters';

  static ThemeParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ThemeParameters(
      backgroundColor: json['background_color'] as int,
      secondaryBackgroundColor: json['secondary_background_color'] as int,
      textColor: json['text_color'] as int,
      hintColor: json['hint_color'] as int,
      linkColor: json['link_color'] as int,
      buttonColor: json['button_color'] as int,
      buttonTextColor: json['button_text_color'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'background_color': backgroundColor,
        'secondary_background_color': secondaryBackgroundColor,
        'text_color': textColor,
        'hint_color': hintColor,
        'link_color': linkColor,
        'button_color': buttonColor,
        'button_text_color': buttonTextColor,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
