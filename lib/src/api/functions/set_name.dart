import '../tdapi.dart';

/// Changes the first and last name of the current user
/// Returns [Ok]
class SetName extends TdFunction {
  SetName({required this.firstName, this.lastName});

  /// [firstName] The new value of the first name for the user; 1-64 characters
  final String firstName;

  /// [lastName] The new value of the optional last name for the user; 0-64
  /// characters
  final String? lastName;

  static const String CONSTRUCTOR = 'setName';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'first_name': this.firstName,
        'last_name': this.lastName,
        '@type': CONSTRUCTOR
      };
}
