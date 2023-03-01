import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Suggests the user to set a 2-step verification password to be able to log
/// in again
@immutable
class SuggestedActionSetPassword extends SuggestedAction {
  const SuggestedActionSetPassword({
    required this.authorizationDelay,
  });

  /// [authorizationDelay] The number of days to pass between consecutive
  /// authorizations if the user declines to set password; if 0, then the user
  /// is advised to set the password for security reasons
  final int authorizationDelay;

  static const String constructor = 'suggestedActionSetPassword';

  static SuggestedActionSetPassword? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedActionSetPassword(
      authorizationDelay: json['authorization_delay'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'authorization_delay': authorizationDelay,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
