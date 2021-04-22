import '../tdapi.dart';

/// Returns an HTTP URL with the chat statistics. Currently this method of
/// getting the statistics are disabled and can be deleted in the future
/// Returns [HttpUrl]
class GetChatStatisticsUrl extends TdFunction {
  GetChatStatisticsUrl(
      {required this.chatId, required this.parameters, required this.isDark});

  /// [chatId] Chat identifier
  final int chatId;

  /// [parameters] Parameters from "tg://statsrefresh?params=******" link
  final String parameters;

  /// [isDark] Pass true if a URL with the dark theme must be returned
  final bool isDark;

  static const String CONSTRUCTOR = 'getChatStatisticsUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'parameters': this.parameters,
        'is_dark': this.isDark,
        '@type': CONSTRUCTOR
      };
}
