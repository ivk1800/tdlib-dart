import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends an inline query to a bot and returns its results. Returns an error
/// with code 502 if the bot fails to answer the query before the query
/// timeout expires
/// Returns [InlineQueryResults]
@immutable
class GetInlineQueryResults extends TdFunction {
  const GetInlineQueryResults({
    required this.botUserId,
    required this.chatId,
    this.userLocation,
    required this.query,
    required this.offset,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [chatId] Identifier of the chat where the query was sent
  final int chatId;

  /// [userLocation] Location of the user; pass null if unknown or the bot
  /// doesn't need user's location
  final Location? userLocation;

  /// [query] Text of the query
  final String query;

  /// [offset] Offset of the first entry to return; use empty string to get the
  /// first chunk of results
  final String offset;

  static const String constructor = 'getInlineQueryResults';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'chat_id': chatId,
        'user_location': userLocation?.toJson(),
        'query': query,
        'offset': offset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
