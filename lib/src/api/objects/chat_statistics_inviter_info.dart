import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains statistics about number of new members invited by a user
@immutable
class ChatStatisticsInviterInfo extends TdObject {
  const ChatStatisticsInviterInfo({
    required this.userId,
    required this.addedMemberCount,
  });

  /// [userId] User identifier
  final int userId;

  /// [addedMemberCount] Number of new members invited by the user
  final int addedMemberCount;

  static const String constructor = 'chatStatisticsInviterInfo';

  static ChatStatisticsInviterInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsInviterInfo(
      userId: json['user_id'] as int,
      addedMemberCount: json['added_member_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'added_member_count': addedMemberCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
