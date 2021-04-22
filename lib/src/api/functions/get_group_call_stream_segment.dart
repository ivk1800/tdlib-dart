import '../tdapi.dart';

/// Returns a file with a segment of a group call stream in a modified OGG
/// format
/// Returns [FilePart]
class GetGroupCallStreamSegment extends TdFunction {
  GetGroupCallStreamSegment(
      {required this.groupCallId,
      required this.timeOffset,
      required this.scale});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [timeOffset] Point in time when the stream segment begins; Unix timestamp
  /// in milliseconds
  final int timeOffset;

  /// [scale] Segment duration scale; 0-1. Segment's duration is 1000/(2**scale)
  /// milliseconds
  final int scale;

  static const String CONSTRUCTOR = 'getGroupCallStreamSegment';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'time_offset': this.timeOffset,
        'scale': this.scale,
        '@type': CONSTRUCTOR
      };
}
