import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of users that has failed to be added to a chat
@immutable
class FailedToAddMembers extends TdObject {
  const FailedToAddMembers({
    required this.failedToAddMembers,
  });

  /// [failedToAddMembers] Information about users that weren't added to the
  /// chat
  final List<FailedToAddMember> failedToAddMembers;

  static const String constructor = 'failedToAddMembers';

  static FailedToAddMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FailedToAddMembers(
      failedToAddMembers: List<FailedToAddMember>.from(
          ((json['failed_to_add_members'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => FailedToAddMember.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'failed_to_add_members':
            failedToAddMembers.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
