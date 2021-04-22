import '../tdapi.dart';

/// Represents a basic group of 0-200 users (must be upgraded to a supergroup
/// to accommodate more than 200 users)
class BasicGroup extends TdObject {
  BasicGroup(
      {required this.id,
      required this.memberCount,
      required this.status,
      required this.isActive,
      required this.upgradedToSupergroupId});

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

  static const String CONSTRUCTOR = 'basicGroup';

  static BasicGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BasicGroup(
        id: json['id'],
        memberCount: json['member_count'],
        status: ChatMemberStatus.fromJson(json['status'])!,
        isActive: json['is_active'],
        upgradedToSupergroupId: json['upgraded_to_supergroup_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'member_count': this.memberCount,
        'status': this.status.toJson(),
        'is_active': this.isActive,
        'upgraded_to_supergroup_id': this.upgradedToSupergroupId,
        '@type': CONSTRUCTOR
      };
}
