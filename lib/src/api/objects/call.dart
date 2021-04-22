import '../tdapi.dart';

/// Describes a call
class Call extends TdObject {
  Call(
      {required this.id,
      required this.userId,
      required this.isOutgoing,
      required this.isVideo,
      required this.state});

  /// [id] Call identifier, not persistent
  final int id;

  /// [userId] Peer user identifier
  final int userId;

  /// [isOutgoing] True, if the call is outgoing
  final bool isOutgoing;

  /// [isVideo] True, if the call is a video call
  final bool isVideo;

  /// [state] Call state
  final CallState state;

  static const String CONSTRUCTOR = 'call';

  static Call? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Call(
        id: json['id'],
        userId: json['user_id'],
        isOutgoing: json['is_outgoing'],
        isVideo: json['is_video'],
        state: CallState.fromJson(json['state'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'user_id': this.userId,
        'is_outgoing': this.isOutgoing,
        'is_video': this.isVideo,
        'state': this.state.toJson(),
        '@type': CONSTRUCTOR
      };
}
