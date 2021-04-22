import '../tdapi.dart';

/// A non-standard action has happened in the chat
class MessageCustomServiceAction extends MessageContent {
  MessageCustomServiceAction({required this.text});

  /// [text] Message text to be shown in the chat
  final String text;

  static const String CONSTRUCTOR = 'messageCustomServiceAction';

  static MessageCustomServiceAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCustomServiceAction(text: json['text']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'text': this.text, '@type': CONSTRUCTOR};
}
