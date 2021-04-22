import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's identity
/// card
class InputPassportElementIdentityCard extends InputPassportElement {
  InputPassportElementIdentityCard({required this.identityCard});

  /// [identityCard] The identity card to be saved
  final InputIdentityDocument identityCard;

  static const String CONSTRUCTOR = 'inputPassportElementIdentityCard';

  static InputPassportElementIdentityCard? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementIdentityCard(
        identityCard: InputIdentityDocument.fromJson(json['identity_card'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'identity_card': this.identityCard.toJson(), '@type': CONSTRUCTOR};
}
