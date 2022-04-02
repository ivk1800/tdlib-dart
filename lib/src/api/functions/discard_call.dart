import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Discards a call
/// Returns [Ok]
class DiscardCall extends TdFunction {
  DiscardCall(
      {required this.callId,
      required this.isDisconnected,
      required this.duration,
      required this.isVideo,
      required this.connectionId});

  /// [callId] Call identifier
  final int callId;

  /// [isDisconnected] True, if the user was disconnected
  final bool isDisconnected;

  /// [duration] The call duration, in seconds
  final int duration;

  /// [isVideo] True, if the call was a video call
  final bool isVideo;

  /// [connectionId] Identifier of the connection used during the call
  final int connectionId;

  static const String CONSTRUCTOR = 'discardCall';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'call_id': this.callId,
        'is_disconnected': this.isDisconnected,
        'duration': this.duration,
        'is_video': this.isVideo,
        'connection_id': this.connectionId,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
