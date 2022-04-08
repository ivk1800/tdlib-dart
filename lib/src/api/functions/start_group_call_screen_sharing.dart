import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Starts screen sharing in a joined group call. Returns join response
/// payload for tgcalls
/// Returns [Text]
@immutable
class StartGroupCallScreenSharing extends TdFunction {
  const StartGroupCallScreenSharing({
    required this.groupCallId,
    required this.audioSourceId,
    required this.payload,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [audioSourceId] Screen sharing audio channel synchronization source
  /// identifier; received from tgcalls
  final int audioSourceId;

  /// [payload] Group call join payload; received from tgcalls
  final String payload;

  static const String constructor = 'startGroupCallScreenSharing';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'audio_source_id': audioSourceId,
        'payload': payload,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
