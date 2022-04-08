import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Ends recording of an active group call. Requires groupCall.can_be_managed
/// group call flag
/// Returns [Ok]
@immutable
class EndGroupCallRecording extends TdFunction {
  const EndGroupCallRecording({
    required this.groupCallId,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String constructor = 'endGroupCallRecording';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
