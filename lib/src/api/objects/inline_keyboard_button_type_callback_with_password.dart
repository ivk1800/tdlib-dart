import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A button that asks for password of the current user and then sends a
/// callback query to a bot
class InlineKeyboardButtonTypeCallbackWithPassword
    extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeCallbackWithPassword({required this.data});

  /// [data] Data to be sent to the bot via a callback query
  final String data;

  static const String CONSTRUCTOR =
      'inlineKeyboardButtonTypeCallbackWithPassword';

  static InlineKeyboardButtonTypeCallbackWithPassword? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeCallbackWithPassword(data: json['data']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'data': this.data, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
