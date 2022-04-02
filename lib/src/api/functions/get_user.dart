import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about a user by their identifier. This is an offline
/// request if the current user is not a bot
/// Returns [User]
class GetUser extends TdFunction {
  GetUser({required this.userId});

  /// [userId] User identifier
  final int userId;

  static const String CONSTRUCTOR = 'getUser';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
