import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new incoming inline query; for bots only
@immutable
class UpdateNewInlineQuery extends Update {
  const UpdateNewInlineQuery({
    required this.id,
    required this.senderUserId,
    this.userLocation,
    this.chatType,
    required this.query,
    required this.offset,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [userLocation] User location; may be null
  final Location? userLocation;

  /// [chatType] The type of the chat, from which the query originated; may be
  /// null if unknown
  final ChatType? chatType;

  /// [query] Text of the query
  final String query;

  /// [offset] Offset of the first entry to return
  final String offset;

  static const String constructor = 'updateNewInlineQuery';

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
      offset: json['offset'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'sender_user_id': senderUserId,
        'user_location': userLocation?.toJson(),
        'chat_type': chatType?.toJson(),
        'query': query,
        'offset': offset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
