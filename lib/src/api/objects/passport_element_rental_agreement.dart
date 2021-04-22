import '../tdapi.dart';

/// A Telegram Passport element containing the user's rental agreement
class PassportElementRentalAgreement extends PassportElement {
  PassportElementRentalAgreement({required this.rentalAgreement});

  /// [rentalAgreement] Rental agreement
  final PersonalDocument rentalAgreement;

  static const String CONSTRUCTOR = 'passportElementRentalAgreement';

  static PassportElementRentalAgreement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementRentalAgreement(
        rentalAgreement: PersonalDocument.fromJson(json['rental_agreement'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'rental_agreement': this.rentalAgreement.toJson(), '@type': CONSTRUCTOR};
}
