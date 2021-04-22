import '../tdapi.dart';

/// The user has chosen a result of an inline query; for bots only
class UpdateNewChosenInlineResult extends Update {
  UpdateNewChosenInlineResult(
      {required this.senderUserId,
      this.userLocation,
      required this.query,
      required this.resultId,
      required this.inlineMessageId});

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [userLocation] User location; may be null
  final Location? userLocation;

  /// [query] Text of the query
  final String query;

  /// [resultId] Identifier of the chosen result
  final String resultId;

  /// [inlineMessageId] Identifier of the sent inline message, if known
  final String inlineMessageId;

  static const String CONSTRUCTOR = 'updateNewChosenInlineResult';

  static UpdateNewChosenInlineResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewChosenInlineResult(
        senderUserId: json['sender_user_id'],
        userLocation: Location.fromJson(json['user_location']),
        query: json['query'],
        resultId: json['result_id'],
        inlineMessageId: json['inline_message_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sender_user_id': this.senderUserId,
        'user_location': this.userLocation?.toJson(),
        'query': this.query,
        'result_id': this.resultId,
        'inline_message_id': this.inlineMessageId,
        '@type': CONSTRUCTOR
      };
}
