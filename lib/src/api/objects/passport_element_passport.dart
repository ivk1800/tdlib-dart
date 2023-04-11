import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's passport
@immutable
class PassportElementPassport extends PassportElement {
  const PassportElementPassport({
    required this.passport,
  });

  /// [passport] Passport
  final IdentityDocument passport;

  static const String constructor = 'passportElementPassport';

  static PassportElementPassport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementPassport(
      passport:
          IdentityDocument.fromJson(json['passport'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'passport': passport.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
