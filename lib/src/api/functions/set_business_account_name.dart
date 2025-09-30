import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the first and last name of a business account; for bots only
/// Returns [Ok]
@immutable
class SetBusinessAccountName extends TdFunction {
  const SetBusinessAccountName({
    required this.businessConnectionId,
    required this.firstName,
    this.lastName,
  });

  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [firstName] The new value of the first name for the business account; 1-64
  /// characters
  final String firstName;

  /// [lastName] The new value of the optional last name for the business
  /// account; 0-64 characters
  final String? lastName;

  static const String constructor = 'setBusinessAccountName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'business_connection_id': businessConnectionId,
    'first_name': firstName,
    'last_name': lastName,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
