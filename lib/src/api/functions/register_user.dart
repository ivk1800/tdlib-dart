import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Finishes user registration. Works only when the current authorization
/// state is authorizationStateWaitRegistration
/// Returns [Ok]
@immutable
class RegisterUser extends TdFunction {
  const RegisterUser({
    required this.firstName,
    required this.lastName,
  });

  /// [firstName] The first name of the user; 1-64 characters
  final String firstName;

  /// [lastName] The last name of the user; 0-64 characters
  final String lastName;

  static const String constructor = 'registerUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'first_name': firstName,
        'last_name': lastName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
