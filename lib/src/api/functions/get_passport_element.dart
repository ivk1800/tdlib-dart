import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns one of the available Telegram Passport elements
/// Returns [PassportElement]
class GetPassportElement extends TdFunction {
  GetPassportElement({required this.type, required this.password});

  /// [type] Telegram Passport element type
  final PassportElementType type;

  /// [password] Password of the current user
  final String password;

  static const String CONSTRUCTOR = 'getPassportElement';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'type': this.type.toJson(),
        'password': this.password,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
