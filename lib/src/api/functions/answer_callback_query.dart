import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the result of a callback query; for bots only
/// Returns [Ok]
@immutable
class AnswerCallbackQuery extends TdFunction {
  const AnswerCallbackQuery({
    required this.callbackQueryId,
    required this.text,
    required this.showAlert,
    required this.url,
    required this.cacheTime,
  });

  /// [callbackQueryId] Identifier of the callback query
  final int callbackQueryId;

  /// [text] Text of the answer
  final String text;

  /// [showAlert] If true, an alert must be shown to the user instead of a toast
  /// notification
  final bool showAlert;

  /// [url] URL to be opened
  final String url;

  /// [cacheTime] Time during which the result of the query can be cached, in
  /// seconds
  final int cacheTime;

  static const String constructor = 'answerCallbackQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'callback_query_id': callbackQueryId,
        'text': text,
        'show_alert': showAlert,
        'url': url,
        'cache_time': cacheTime,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
