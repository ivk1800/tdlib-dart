import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets group call title. Requires groupCall.can_be_managed group call flag
/// Returns [Ok]
@immutable
class SetGroupCallTitle extends TdFunction {
  const SetGroupCallTitle({
    required this.groupCallId,
    required this.title,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [title] New group call title; 1-64 characters
  final String title;

  static const String constructor = 'setGroupCallTitle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
