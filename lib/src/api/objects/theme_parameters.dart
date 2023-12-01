import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains parameters of the application theme
@immutable
class ThemeParameters extends TdObject {
  const ThemeParameters({
    required this.backgroundColor,
    required this.secondaryBackgroundColor,
    required this.headerBackgroundColor,
    required this.sectionBackgroundColor,
    required this.textColor,
    required this.accentTextColor,
    required this.sectionHeaderTextColor,
    required this.subtitleTextColor,
    required this.destructiveTextColor,
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

  /// [headerBackgroundColor] A color of the header background in the RGB24
  /// format
  final int headerBackgroundColor;

  /// [sectionBackgroundColor] A color of the section background in the RGB24
  /// format
  final int sectionBackgroundColor;

  /// [textColor] A color of text in the RGB24 format
  final int textColor;

  /// [accentTextColor] An accent color of the text in the RGB24 format
  final int accentTextColor;

  /// [sectionHeaderTextColor] A color of text on the section headers in the
  /// RGB24 format
  final int sectionHeaderTextColor;

  /// [subtitleTextColor] A color of the subtitle text in the RGB24 format
  final int subtitleTextColor;

  /// [destructiveTextColor] A color of the text for destructive actions in the
  /// RGB24 format
  final int destructiveTextColor;

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
      headerBackgroundColor: json['header_background_color'] as int,
      sectionBackgroundColor: json['section_background_color'] as int,
      textColor: json['text_color'] as int,
      accentTextColor: json['accent_text_color'] as int,
      sectionHeaderTextColor: json['section_header_text_color'] as int,
      subtitleTextColor: json['subtitle_text_color'] as int,
      destructiveTextColor: json['destructive_text_color'] as int,
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
        'header_background_color': headerBackgroundColor,
        'section_background_color': sectionBackgroundColor,
        'text_color': textColor,
        'accent_text_color': accentTextColor,
        'section_header_text_color': sectionHeaderTextColor,
        'subtitle_text_color': subtitleTextColor,
        'destructive_text_color': destructiveTextColor,
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
