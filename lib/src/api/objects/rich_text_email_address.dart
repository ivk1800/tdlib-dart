import '../tdapi.dart';

/// A rich text email link
class RichTextEmailAddress extends RichText {
  RichTextEmailAddress({required this.text, required this.emailAddress});

  /// [text] Text
  final RichText text;

  /// [emailAddress] Email address
  final String emailAddress;

  static const String CONSTRUCTOR = 'richTextEmailAddress';

  static RichTextEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextEmailAddress(
        text: RichText.fromJson(json['text'])!,
        emailAddress: json['email_address']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text.toJson(),
        'email_address': this.emailAddress,
        '@type': CONSTRUCTOR
      };
}
