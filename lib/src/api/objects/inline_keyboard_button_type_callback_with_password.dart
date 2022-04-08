import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A button that asks for password of the current user and then sends a
/// callback query to a bot
@immutable
class InlineKeyboardButtonTypeCallbackWithPassword
    extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeCallbackWithPassword({
    required this.data,
  });

  /// [data] Data to be sent to the bot via a callback query
  final String data;

  static const String constructor =
      'inlineKeyboardButtonTypeCallbackWithPassword';

  static InlineKeyboardButtonTypeCallbackWithPassword? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeCallbackWithPassword(
      data: json['data'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
