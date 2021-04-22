import '../tdapi.dart';

/// A new incoming inline query; for bots only
class UpdateNewInlineQuery extends Update {
  UpdateNewInlineQuery(
      {required this.id,
      required this.senderUserId,
      this.userLocation,
      this.chatType,
      required this.query,
      required this.offset});

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [userLocation] User location; may be null
  final Location? userLocation;

  /// [chatType] Contains information about the type of the chat, from which the
  /// query originated; may be null if unknown
  final ChatType? chatType;

  /// [query] Text of the query
  final String query;

  /// [offset] Offset of the first entry to return
  final String offset;

  static const String CONSTRUCTOR = 'updateNewInlineQuery';

  static UpdateNewInlineQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewInlineQuery(
        id: int.tryParse(json['id']) ?? 0,
        senderUserId: json['sender_user_id'],
        userLocation: Location.fromJson(json['user_location']),
        chatType: ChatType.fromJson(json['chat_type']),
        query: json['query'],
        offset: json['offset']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'sender_user_id': this.senderUserId,
        'user_location': this.userLocation?.toJson(),
        'chat_type': this.chatType?.toJson(),
        'query': this.query,
        'offset': this.offset,
        '@type': CONSTRUCTOR
      };
}
