import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's driver
/// license
@immutable
class InputPassportElementDriverLicense extends InputPassportElement {
  const InputPassportElementDriverLicense({
    required this.driverLicense,
  });

  /// [driverLicense] The driver license to be saved
  final InputIdentityDocument driverLicense;

  static const String constructor = 'inputPassportElementDriverLicense';

  static InputPassportElementDriverLicense? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementDriverLicense(
      driverLicense: InputIdentityDocument.fromJson(json['driver_license'])!,
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
