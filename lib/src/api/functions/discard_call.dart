import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Discards a call
/// Returns [Ok]
@immutable
class DiscardCall extends TdFunction {
  const DiscardCall({
    required this.callId,
    required this.isDisconnected,
    required this.inviteLink,
    required this.duration,
    required this.isVideo,
    required this.connectionId,
  });

  /// [callId] Call identifier
  final int callId;

  /// [isDisconnected] Pass true if the user was disconnected
  final bool isDisconnected;

  /// [inviteLink] If the call was upgraded to a group call, pass invite link to
  /// the group call
  final String inviteLink;

  /// [duration] The call duration, in seconds
  final int duration;

  /// [isVideo] Pass true if the call was a video call
  final bool isVideo;

  /// [connectionId] Identifier of the connection used during the call
  final int connectionId;

  static const String constructor = 'discardCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'call_id': callId,
    'is_disconnected': isDisconnected,
    'invite_link': inviteLink,
    'duration': duration,
    'is_video': isVideo,
    'connection_id': connectionId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
