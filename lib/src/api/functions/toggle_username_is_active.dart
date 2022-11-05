import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes active state for a username of the current user. The editable
/// username can't be disabled. May return an error with a message
/// "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active usernames has
/// been reached
/// Returns [Ok]
@immutable
class ToggleUsernameIsActive extends TdFunction {
  const ToggleUsernameIsActive({
    required this.username,
    required this.isActive,
  });

  /// [username] The username to change
  final String username;

  /// [isActive] Pass true to activate the username; pass false to disable it
  final bool isActive;

  static const String constructor = 'toggleUsernameIsActive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'username': username,
        'is_active': isActive,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
