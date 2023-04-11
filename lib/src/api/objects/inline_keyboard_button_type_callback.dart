import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A button that sends a callback query to a bot
@immutable
class InlineKeyboardButtonTypeCallback extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeCallback({
    required this.data,
  });

  /// [data] Data to be sent to the bot via a callback query
  final String data;

  static const String constructor = 'inlineKeyboardButtonTypeCallback';

  static InlineKeyboardButtonTypeCallback? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeCallback(
      data: json['data'] as String,
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
