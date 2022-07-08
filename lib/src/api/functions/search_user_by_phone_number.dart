import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches a user by their phone number. Returns a 404 error if the user
/// can't be found
/// Returns [User]
@immutable
class SearchUserByPhoneNumber extends TdFunction {
  const SearchUserByPhoneNumber({
    required this.phoneNumber,
  });

  /// [phoneNumber] Phone number to search for
  final String phoneNumber;

  static const String constructor = 'searchUserByPhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
