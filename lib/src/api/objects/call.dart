import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a call
@immutable
class Call extends TdObject {
  const Call({
    required this.id,
    required this.userId,
    required this.isOutgoing,
    required this.isVideo,
    required this.state,
  });

  /// [id] Call identifier, not persistent
  final int id;

  /// [userId] User identifier of the other call participant
  final int userId;

  /// [isOutgoing] True, if the call is outgoing
  final bool isOutgoing;

  /// [isVideo] True, if the call is a video call
  final bool isVideo;

  /// [state] Call state
  final CallState state;

  static const String constructor = 'call';

  static Call? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Call(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      isOutgoing: json['is_outgoing'] as bool,
      isVideo: json['is_video'] as bool,
      state: CallState.fromJson(json['state'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'user_id': userId,
        'is_outgoing': isOutgoing,
        'is_video': isVideo,
        'state': state.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
