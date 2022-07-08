import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Data from a Web App has been received; for bots only
@immutable
class MessageWebAppDataReceived extends MessageContent {
  const MessageWebAppDataReceived({
    required this.buttonText,
    required this.data,
  });

  /// [buttonText] Text of the keyboardButtonTypeWebApp button, which opened the
  /// Web App
  final String buttonText;

  /// [data] Received data
  final String data;

  static const String constructor = 'messageWebAppDataReceived';

  static MessageWebAppDataReceived? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageWebAppDataReceived(
      buttonText: json['button_text'],
      data: json['data'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'button_text': buttonText,
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
