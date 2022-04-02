import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A Telegram Passport element containing the user's internal passport
class PassportElementInternalPassport extends PassportElement {
  PassportElementInternalPassport({required this.internalPassport});

  /// [internalPassport] Internal passport
  final IdentityDocument internalPassport;

  static const String CONSTRUCTOR = 'passportElementInternalPassport';

  static PassportElementInternalPassport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementInternalPassport(
        internalPassport:
            IdentityDocument.fromJson(json['internal_passport'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'internal_passport': this.internalPassport.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
