import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A non-standard action has happened in the chat
@immutable
class MessageCustomServiceAction extends MessageContent {
  const MessageCustomServiceAction({
    required this.text,
  });

  /// [text] Message text to be shown in the chat
  final String text;

  static const String constructor = 'messageCustomServiceAction';

  static MessageCustomServiceAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCustomServiceAction(
      text: json['text'],
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
