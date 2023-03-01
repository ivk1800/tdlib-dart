import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// TDLib client is in its final state. All databases are closed and all
/// resources are released. No other updates will be received after this. All
/// queries will be responded to with error code 500. To continue working, one
/// must create a new instance of the TDLib client
@immutable
class AuthorizationStateClosed extends AuthorizationState {
  const AuthorizationStateClosed();

  static const String constructor = 'authorizationStateClosed';

  static AuthorizationStateClosed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateClosed();
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
