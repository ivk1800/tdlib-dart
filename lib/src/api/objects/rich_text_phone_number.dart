import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rich text phone number
@immutable
class RichTextPhoneNumber extends RichText {
  const RichTextPhoneNumber({
    required this.text,
    required this.phoneNumber,
  });

  /// [text] Text
  final RichText text;

  /// [phoneNumber] Phone number
  final String phoneNumber;

  static const String constructor = 'richTextPhoneNumber';

  static RichTextPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextPhoneNumber(
      text: RichText.fromJson(json['text'])!,
      phoneNumber: json['phone_number'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'phone_number': phoneNumber,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
