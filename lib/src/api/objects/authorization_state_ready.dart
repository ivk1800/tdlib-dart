import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user has been successfully authorized. TDLib is now ready to answer
/// queries
@immutable
class AuthorizationStateReady extends AuthorizationState {
  const AuthorizationStateReady();

  static const String constructor = 'authorizationStateReady';

  static AuthorizationStateReady? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateReady();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
