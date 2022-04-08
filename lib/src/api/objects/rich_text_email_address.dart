import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rich text email link
@immutable
class RichTextEmailAddress extends RichText {
  const RichTextEmailAddress({
    required this.text,
    required this.emailAddress,
  });

  /// [text] Text
  final RichText text;

  /// [emailAddress] Email address
  final String emailAddress;

  static const String constructor = 'richTextEmailAddress';

  static RichTextEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextEmailAddress(
      text: RichText.fromJson(json['text'])!,
      emailAddress: json['email_address'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'email_address': emailAddress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
