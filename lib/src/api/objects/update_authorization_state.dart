import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The user authorization state has changed
class UpdateAuthorizationState extends Update {
  UpdateAuthorizationState({required this.authorizationState});

  /// [authorizationState] New authorization state
  final AuthorizationState authorizationState;

  static const String CONSTRUCTOR = 'updateAuthorizationState';

  static UpdateAuthorizationState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAuthorizationState(
        authorizationState:
            AuthorizationState.fromJson(json['authorization_state'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'authorization_state': this.authorizationState.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
