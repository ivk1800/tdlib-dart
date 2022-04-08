import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's rental
/// agreement
@immutable
class InputPassportElementRentalAgreement extends InputPassportElement {
  const InputPassportElementRentalAgreement({
    required this.rentalAgreement,
  });

  /// [rentalAgreement] The rental agreement to be saved
  final InputPersonalDocument rentalAgreement;

  static const String constructor = 'inputPassportElementRentalAgreement';

  static InputPassportElementRentalAgreement? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementRentalAgreement(
      rentalAgreement:
          InputPersonalDocument.fromJson(json['rental_agreement'])!,
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
