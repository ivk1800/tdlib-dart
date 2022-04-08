import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about pending join requests for a chat
@immutable
class ChatJoinRequestsInfo extends TdObject {
  const ChatJoinRequestsInfo({
    required this.totalCount,
    required this.userIds,
  });

  /// [totalCount] Total number of pending join requests
  final int totalCount;

  /// [userIds] Identifiers of at most 3 users sent the newest pending join
  /// requests
  final List<int> userIds;

  static const String constructor = 'chatJoinRequestsInfo';

  static ChatJoinRequestsInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatJoinRequestsInfo(
      totalCount: json['total_count'],
      userIds:
          List<int>.from((json['user_ids'] ?? []).map((item) => item).toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'user_ids': userIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
