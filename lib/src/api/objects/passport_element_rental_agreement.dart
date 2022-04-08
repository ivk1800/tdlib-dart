import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's rental agreement
@immutable
class PassportElementRentalAgreement extends PassportElement {
  const PassportElementRentalAgreement({
    required this.rentalAgreement,
  });

  /// [rentalAgreement] Rental agreement
  final PersonalDocument rentalAgreement;

  static const String constructor = 'passportElementRentalAgreement';

  static PassportElementRentalAgreement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementRentalAgreement(
      rentalAgreement: PersonalDocument.fromJson(json['rental_agreement'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'rental_agreement': rentalAgreement.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
