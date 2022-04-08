import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's driver license
@immutable
class PassportElementDriverLicense extends PassportElement {
  const PassportElementDriverLicense({
    required this.driverLicense,
  });

  /// [driverLicense] Driver license
  final IdentityDocument driverLicense;

  static const String constructor = 'passportElementDriverLicense';

  static PassportElementDriverLicense? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementDriverLicense(
      driverLicense: IdentityDocument.fromJson(json['driver_license'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'driver_license': driverLicense.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
