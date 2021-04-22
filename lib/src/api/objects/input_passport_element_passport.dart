import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's passport
class InputPassportElementPassport extends InputPassportElement {
  InputPassportElementPassport({required this.passport});

  /// [passport] The passport to be saved
  final InputIdentityDocument passport;

  static const String CONSTRUCTOR = 'inputPassportElementPassport';

  static InputPassportElementPassport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementPassport(
        passport: InputIdentityDocument.fromJson(json['passport'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'passport': this.passport.toJson(), '@type': CONSTRUCTOR};
}
