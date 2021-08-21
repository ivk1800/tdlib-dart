import '../tdapi.dart';

/// Sends an inline query to a bot and returns its results. Returns an error
/// with code 502 if the bot fails to answer the query before the query
/// timeout expires
/// Returns [InlineQueryResults]
class GetInlineQueryResults extends TdFunction {
  GetInlineQueryResults(
      {required this.botUserId,
      required this.chatId,
      this.userLocation,
      required this.query,
      required this.offset});

  /// [botUserId] The identifier of the target bot
  final int botUserId;

  /// [chatId] Identifier of the chat where the query was sent
  final int chatId;

  /// [userLocation] Location of the user, only if needed
  final Location? userLocation;

  /// [query] Text of the query
  final String query;

  /// [offset] Offset of the first entry to return
  final String offset;

  static const String CONSTRUCTOR = 'getInlineQueryResults';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'bot_user_id': this.botUserId,
        'chat_id': this.chatId,
        'user_location': this.userLocation?.toJson(),
        'query': this.query,
        'offset': this.offset,
        '@type': CONSTRUCTOR
      };
}
