import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A Telegram Passport element containing the user's driver license
class PassportElementDriverLicense extends PassportElement {
  PassportElementDriverLicense({required this.driverLicense});

  /// [driverLicense] Driver license
  final IdentityDocument driverLicense;

  static const String CONSTRUCTOR = 'passportElementDriverLicense';

  static PassportElementDriverLicense? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementDriverLicense(
        driverLicense: IdentityDocument.fromJson(json['driver_license'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'driver_license': this.driverLicense.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
