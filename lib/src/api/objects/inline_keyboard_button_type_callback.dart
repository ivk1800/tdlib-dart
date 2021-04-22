import '../tdapi.dart';

/// A button that sends a callback query to a bot
class InlineKeyboardButtonTypeCallback extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeCallback({required this.data});

  /// [data] Data to be sent to the bot via a callback query
  final String data;

  static const String CONSTRUCTOR = 'inlineKeyboardButtonTypeCallback';

  static InlineKeyboardButtonTypeCallback? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeCallback(data: json['data']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'data': this.data, '@type': CONSTRUCTOR};
}
