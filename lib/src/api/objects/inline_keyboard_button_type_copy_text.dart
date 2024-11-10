import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A button that copies specified text to clipboard
@immutable
class InlineKeyboardButtonTypeCopyText extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeCopyText({
    required this.text,
  });

  /// [text] The text to copy to clipboard
  final String text;

  static const String constructor = 'inlineKeyboardButtonTypeCopyText';

  static InlineKeyboardButtonTypeCopyText? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeCopyText(
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
