import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's driver
/// license
class InputPassportElementDriverLicense extends InputPassportElement {
  InputPassportElementDriverLicense({required this.driverLicense});

  /// [driverLicense] The driver license to be saved
  final InputIdentityDocument driverLicense;

  static const String CONSTRUCTOR = 'inputPassportElementDriverLicense';

  static InputPassportElementDriverLicense? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementDriverLicense(
        driverLicense: InputIdentityDocument.fromJson(json['driver_license'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'driver_license': this.driverLicense.toJson(), '@type': CONSTRUCTOR};
}
