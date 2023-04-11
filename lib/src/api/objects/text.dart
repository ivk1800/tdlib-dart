import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains some text
@immutable
class Text extends TdObject {
  const Text({
    required this.text,
  });

  /// [text] Text
  final String text;

  static const String constructor = 'text';

  static Text? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Text(
      text: json['text'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
