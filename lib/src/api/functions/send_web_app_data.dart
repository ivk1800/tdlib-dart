import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends data received from a keyboardButtonTypeWebApp Web App to a bot
/// Returns [Ok]
@immutable
class SendWebAppData extends TdFunction {
  const SendWebAppData({
    required this.botUserId,
    required this.buttonText,
    required this.data,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [buttonText] Text of the keyboardButtonTypeWebApp button, which opened the
  /// Web App
  final String buttonText;

  /// [data] Received data
  final String data;

  static const String constructor = 'sendWebAppData';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'button_text': buttonText,
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
