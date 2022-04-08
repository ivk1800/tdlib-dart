import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the first and last name of the current user
/// Returns [Ok]
@immutable
class SetName extends TdFunction {
  const SetName({
    required this.firstName,
    this.lastName,
  });

  /// [firstName] The new value of the first name for the current user; 1-64
  /// characters
  final String firstName;

  /// [lastName] The new value of the optional last name for the current user;
  /// 0-64 characters
  final String? lastName;

  static const String constructor = 'setName';

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
