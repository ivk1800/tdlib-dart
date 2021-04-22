import '../tdapi.dart';

/// A rich text phone number
class RichTextPhoneNumber extends RichText {
  RichTextPhoneNumber({required this.text, required this.phoneNumber});

  /// [text] Text
  final RichText text;

  /// [phoneNumber] Phone number
  final String phoneNumber;

  static const String CONSTRUCTOR = 'richTextPhoneNumber';

  static RichTextPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextPhoneNumber(
        text: RichText.fromJson(json['text'])!,
        phoneNumber: json['phone_number']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text.toJson(),
        'phone_number': this.phoneNumber,
        '@type': CONSTRUCTOR
      };
}
