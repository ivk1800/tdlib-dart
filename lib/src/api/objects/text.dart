import '../tdapi.dart';

/// Contains some text
class Text extends TdObject {
  Text({required this.text});

  /// [text] Text
  final String text;

  static const String CONSTRUCTOR = 'text';

  static Text? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Text(text: json['text']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'text': this.text, '@type': CONSTRUCTOR};
}
