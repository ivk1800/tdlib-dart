import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a bot's answer to a callback query
@immutable
class CallbackQueryAnswer extends TdObject {
  const CallbackQueryAnswer({
    required this.text,
    required this.showAlert,
    required this.url,
  });

  /// [text] Text of the answer
  final String text;

  /// [showAlert] True, if an alert must be shown to the user instead of a toast
  /// notification
  final bool showAlert;

  /// [url] URL to be opened
  final String url;

  static const String constructor = 'callbackQueryAnswer';

  static CallbackQueryAnswer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallbackQueryAnswer(
      text: json['text'],
      showAlert: json['show_alert'],
      url: json['url'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'show_alert': showAlert,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
