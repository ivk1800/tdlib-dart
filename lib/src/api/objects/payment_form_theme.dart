import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Theme colors for a payment form
@immutable
class PaymentFormTheme extends TdObject {
  const PaymentFormTheme({
    required this.backgroundColor,
    required this.textColor,
    required this.hintColor,
    required this.linkColor,
    required this.buttonColor,
    required this.buttonTextColor,
  });

  /// [backgroundColor] A color of the payment form background in the RGB24
  /// format
  final int backgroundColor;

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

  static const String constructor = 'paymentFormTheme';

  static PaymentFormTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentFormTheme(
      backgroundColor: json['background_color'],
      textColor: json['text_color'],
      hintColor: json['hint_color'],
      linkColor: json['link_color'],
      buttonColor: json['button_color'],
      buttonTextColor: json['button_text_color'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'background_color': backgroundColor,
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
