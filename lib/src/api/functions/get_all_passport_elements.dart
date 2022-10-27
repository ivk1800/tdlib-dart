import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns all available Telegram Passport elements
/// Returns [PassportElements]
@immutable
class GetAllPassportElements extends TdFunction {
  const GetAllPassportElements({
    required this.password,
  });

  /// [password] The 2-step verification password of the current user
  final String password;

  static const String constructor = 'getAllPassportElements';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
