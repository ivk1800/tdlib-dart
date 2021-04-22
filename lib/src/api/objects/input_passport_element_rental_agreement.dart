import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's rental
/// agreement
class InputPassportElementRentalAgreement extends InputPassportElement {
  InputPassportElementRentalAgreement({required this.rentalAgreement});

  /// [rentalAgreement] The rental agreement to be saved
  final InputPersonalDocument rentalAgreement;

  static const String CONSTRUCTOR = 'inputPassportElementRentalAgreement';

  static InputPassportElementRentalAgreement? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementRentalAgreement(
        rentalAgreement:
            InputPersonalDocument.fromJson(json['rental_agreement'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'rental_agreement': this.rentalAgreement.toJson(), '@type': CONSTRUCTOR};
}
