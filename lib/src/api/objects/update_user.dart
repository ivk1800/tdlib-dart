import '../tdapi.dart';

/// Some data of a user has changed. This update is guaranteed to come before
/// the user identifier is returned to the application
class UpdateUser extends Update {
  UpdateUser({required this.user});

  /// [user] New data about the user
  final User user;

  static const String CONSTRUCTOR = 'updateUser';

  static UpdateUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUser(user: User.fromJson(json['user'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user': this.user.toJson(), '@type': CONSTRUCTOR};
}
