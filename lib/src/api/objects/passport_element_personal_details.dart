import '../tdapi.dart';

/// A Telegram Passport element containing the user's personal details
class PassportElementPersonalDetails extends PassportElement {
  PassportElementPersonalDetails({required this.personalDetails});

  /// [personalDetails] Personal details of the user
  final PersonalDetails personalDetails;

  static const String CONSTRUCTOR = 'passportElementPersonalDetails';

  static PassportElementPersonalDetails? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementPersonalDetails(
        personalDetails: PersonalDetails.fromJson(json['personal_details'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'personal_details': this.personalDetails.toJson(), '@type': CONSTRUCTOR};
}
