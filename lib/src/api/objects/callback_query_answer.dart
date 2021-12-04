import '../tdapi.dart';

/// Contains a bot's answer to a callback query
class CallbackQueryAnswer extends TdObject {
  CallbackQueryAnswer(
      {required this.text, required this.showAlert, required this.url});

  /// [text] Text of the answer
  final String text;

  /// [showAlert] True, if an alert must be shown to the user instead of a toast
  /// notification
  final bool showAlert;

  /// [url] URL to be opened
  final String url;

  static const String CONSTRUCTOR = 'callbackQueryAnswer';

  static CallbackQueryAnswer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallbackQueryAnswer(
        text: json['text'], showAlert: json['show_alert'], url: json['url']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text,
        'show_alert': this.showAlert,
        'url': this.url,
        '@type': CONSTRUCTOR
      };
}
