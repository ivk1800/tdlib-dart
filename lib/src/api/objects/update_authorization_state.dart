import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user authorization state has changed
@immutable
class UpdateAuthorizationState extends Update {
  const UpdateAuthorizationState({
    required this.authorizationState,
  });

  /// [authorizationState] New authorization state
  final AuthorizationState authorizationState;

  static const String constructor = 'updateAuthorizationState';

  static UpdateAuthorizationState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAuthorizationState(
      authorizationState:
          AuthorizationState.fromJson(json['authorization_state'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'authorization_state': authorizationState.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
