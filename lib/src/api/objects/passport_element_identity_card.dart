import '../tdapi.dart';

/// A Telegram Passport element containing the user's identity card
class PassportElementIdentityCard extends PassportElement {
  PassportElementIdentityCard({required this.identityCard});

  /// [identityCard] Identity card
  final IdentityDocument identityCard;

  static const String CONSTRUCTOR = 'passportElementIdentityCard';

  static PassportElementIdentityCard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementIdentityCard(
        identityCard: IdentityDocument.fromJson(json['identity_card'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'identity_card': this.identityCard.toJson(), '@type': CONSTRUCTOR};
}
