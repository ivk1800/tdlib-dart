import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Data from a Web App has been sent to a bot
@immutable
class MessageWebAppDataSent extends MessageContent {
  const MessageWebAppDataSent({
    required this.buttonText,
  });

  /// [buttonText] Text of the keyboardButtonTypeWebApp button, which opened the
  /// Web App
  final String buttonText;

  static const String constructor = 'messageWebAppDataSent';

  static MessageWebAppDataSent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageWebAppDataSent(
      buttonText: json['button_text'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'button_text': buttonText,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
