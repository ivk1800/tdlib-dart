import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of users
@immutable
class Users extends TdObject {
  const Users({
    required this.totalCount,
    required this.userIds,
  });

  /// [totalCount] Approximate total count of users found
  final int totalCount;

  /// [userIds] A list of user identifiers
  final List<int> userIds;

  static const String constructor = 'users';

  static Users? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Users(
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
