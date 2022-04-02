import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A message with information about an ended call
class MessageCall extends MessageContent {
  MessageCall(
      {required this.isVideo,
      required this.discardReason,
      required this.duration});

  /// [isVideo] True, if the call was a video call
  final bool isVideo;

  /// [discardReason] Reason why the call was discarded
  final CallDiscardReason discardReason;

  /// [duration] Call duration, in seconds
  final int duration;

  static const String CONSTRUCTOR = 'messageCall';

  static MessageCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCall(
        isVideo: json['is_video'],
        discardReason: CallDiscardReason.fromJson(json['discard_reason'])!,
        duration: json['duration']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_video': this.isVideo,
        'discard_reason': this.discardReason.toJson(),
        'duration': this.duration,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
