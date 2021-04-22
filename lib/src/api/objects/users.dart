import '../tdapi.dart';

/// Represents a list of users
class Users extends TdObject {
  Users({required this.totalCount, required this.userIds});

  /// [totalCount] Approximate total count of users found
  final int totalCount;

  /// [userIds] A list of user identifiers
  final List<int> userIds;

  static const String CONSTRUCTOR = 'users';

  static Users? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Users(
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
}
