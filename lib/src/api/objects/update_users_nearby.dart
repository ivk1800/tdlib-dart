import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The list of users nearby has changed. The update is guaranteed to be sent
/// only 60 seconds after a successful searchChatsNearby request
class UpdateUsersNearby extends Update {
  UpdateUsersNearby({required this.usersNearby});

  /// [usersNearby] The new list of users nearby
  final List<ChatNearby> usersNearby;

  static const String CONSTRUCTOR = 'updateUsersNearby';

  static UpdateUsersNearby? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUsersNearby(
        usersNearby: List<ChatNearby>.from((json['users_nearby'] ?? [])
            .map((item) => ChatNearby.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'users_nearby': usersNearby.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
