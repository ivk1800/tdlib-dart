import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns all available Telegram Passport elements
/// Returns [PassportElements]
class GetAllPassportElements extends TdFunction {
  GetAllPassportElements({required this.password});

  /// [password] Password of the current user
  final String password;

  static const String CONSTRUCTOR = 'getAllPassportElements';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'password': this.password, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
