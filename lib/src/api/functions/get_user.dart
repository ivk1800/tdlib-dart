import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a user by their identifier. This is an offline
/// request if the current user is not a bot
/// Returns [User]
@immutable
class GetUser extends TdFunction {
  const GetUser({
    required this.userId,
  });

  /// [userId] User identifier
  final int userId;

  static const String constructor = 'getUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
