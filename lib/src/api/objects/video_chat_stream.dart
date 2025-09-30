import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an available stream in a video chat
@immutable
class VideoChatStream extends TdObject {
  const VideoChatStream({
    required this.channelId,
    required this.scale,
    required this.timeOffset,
  });

  /// [channelId] Identifier of an audio/video channel
  final int channelId;

  /// [scale] Scale of segment durations in the stream. The duration is
  /// 1000/(2**scale) milliseconds
  final int scale;

  /// [timeOffset] Point in time when the stream currently ends; Unix timestamp
  /// in milliseconds
  final int timeOffset;

  static const String constructor = 'videoChatStream';

  static VideoChatStream? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VideoChatStream(
      channelId: json['channel_id'] as int,
      scale: json['scale'] as int,
      timeOffset: json['time_offset'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'channel_id': channelId,
    'scale': scale,
    'time_offset': timeOffset,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
