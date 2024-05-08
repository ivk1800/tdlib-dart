import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a business chat link to create or edit
@immutable
class InputBusinessChatLink extends TdObject {
  const InputBusinessChatLink({
    required this.text,
    required this.title,
  });

  /// [text] Message draft text that will be added to the input field
  final FormattedText text;

  /// [title] Link title
  final String title;

  static const String constructor = 'inputBusinessChatLink';

  static InputBusinessChatLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputBusinessChatLink(
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      title: json['title'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
