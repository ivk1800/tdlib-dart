import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a basic group of 0-200 users (must be upgraded to a supergroup
/// to accommodate more than 200 users)
@immutable
class BasicGroup extends TdObject {
  const BasicGroup({
    required this.id,
    required this.memberCount,
    required this.status,
    required this.isActive,
    required this.upgradedToSupergroupId,
  });

  /// [id] Group identifier
  final int id;

  /// [memberCount] Number of members in the group
  final int memberCount;

  /// [status] Status of the current user in the group
  final ChatMemberStatus status;

  /// [isActive] True, if the group is active
  final bool isActive;

  /// [upgradedToSupergroupId] Identifier of the supergroup to which this group
  /// was upgraded; 0 if none
  final int upgradedToSupergroupId;

  static const String constructor = 'basicGroup';

  static BasicGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BasicGroup(
      id: json['id'] as int,
      memberCount: json['member_count'] as int,
      status:
          ChatMemberStatus.fromJson(json['status'] as Map<String, dynamic>?)!,
      isActive: json['is_active'] as bool,
      upgradedToSupergroupId: json['upgraded_to_supergroup_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'member_count': memberCount,
        'status': status.toJson(),
        'is_active': isActive,
        'upgraded_to_supergroup_id': upgradedToSupergroupId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
