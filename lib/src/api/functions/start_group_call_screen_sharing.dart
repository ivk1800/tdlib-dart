import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Starts screen sharing in a joined group call. Returns join response
/// payload for tgcalls
/// Returns [Text]
class StartGroupCallScreenSharing extends TdFunction {
  StartGroupCallScreenSharing(
      {required this.groupCallId,
      required this.audioSourceId,
      required this.payload});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [audioSourceId] Screen sharing audio channel synchronization source
  /// identifier; received from tgcalls
  final int audioSourceId;

  /// [payload] Group call join payload; received from tgcalls
  final String payload;

  static const String CONSTRUCTOR = 'startGroupCallScreenSharing';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'audio_source_id': this.audioSourceId,
        'payload': this.payload,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
