import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about pending join requests for a chat
class ChatJoinRequestsInfo extends TdObject {
  ChatJoinRequestsInfo({required this.totalCount, required this.userIds});

  /// [totalCount] Total number of pending join requests
  final int totalCount;

  /// [userIds] Identifiers of at most 3 users sent the newest pending join
  /// requests
  final List<int> userIds;

  static const String CONSTRUCTOR = 'chatJoinRequestsInfo';

  static ChatJoinRequestsInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatJoinRequestsInfo(
        totalCount: json['total_count'],
        userIds: List<int>.from(
            (json['user_ids'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'user_ids': userIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
