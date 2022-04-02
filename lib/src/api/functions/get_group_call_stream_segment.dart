import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns a file with a segment of a group call stream in a modified OGG
/// format for audio or MPEG-4 format for video
/// Returns [FilePart]
class GetGroupCallStreamSegment extends TdFunction {
  GetGroupCallStreamSegment(
      {required this.groupCallId,
      required this.timeOffset,
      required this.scale,
      required this.channelId,
      this.videoQuality});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [timeOffset] Point in time when the stream segment begins; Unix timestamp
  /// in milliseconds
  final int timeOffset;

  /// [scale] Segment duration scale; 0-1. Segment's duration is 1000/(2**scale)
  /// milliseconds
  final int scale;

  /// [channelId] Identifier of an audio/video channel to get as received from
  /// tgcalls
  final int channelId;

  /// [videoQuality] Video quality as received from tgcalls; pass null to get
  /// the worst available quality
  final GroupCallVideoQuality? videoQuality;

  static const String CONSTRUCTOR = 'getGroupCallStreamSegment';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'time_offset': this.timeOffset,
        'scale': this.scale,
        'channel_id': this.channelId,
        'video_quality': this.videoQuality?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
