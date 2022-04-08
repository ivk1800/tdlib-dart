import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Ends screen sharing in a joined group call
/// Returns [Ok]
@immutable
class EndGroupCallScreenSharing extends TdFunction {
  const EndGroupCallScreenSharing({
    required this.groupCallId,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String constructor = 'endGroupCallScreenSharing';

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
