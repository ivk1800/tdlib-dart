import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of users nearby has changed. The update is guaranteed to be sent
/// only 60 seconds after a successful searchChatsNearby request
@immutable
class UpdateUsersNearby extends Update {
  const UpdateUsersNearby({
    required this.usersNearby,
  });

  /// [usersNearby] The new list of users nearby
  final List<ChatNearby> usersNearby;

  static const String constructor = 'updateUsersNearby';

  static UpdateUsersNearby? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUsersNearby(
      usersNearby: List<ChatNearby>.from((json['users_nearby'] ?? [])
          .map((item) => ChatNearby.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'users_nearby': usersNearby.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
