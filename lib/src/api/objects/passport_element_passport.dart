import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A Telegram Passport element containing the user's passport
class PassportElementPassport extends PassportElement {
  PassportElementPassport({required this.passport});

  /// [passport] Passport
  final IdentityDocument passport;

  static const String CONSTRUCTOR = 'passportElementPassport';

  static PassportElementPassport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementPassport(
        passport: IdentityDocument.fromJson(json['passport'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'passport': this.passport.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
