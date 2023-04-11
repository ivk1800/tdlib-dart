import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's internal passport
@immutable
class PassportElementInternalPassport extends PassportElement {
  const PassportElementInternalPassport({
    required this.internalPassport,
  });

  /// [internalPassport] Internal passport
  final IdentityDocument internalPassport;

  static const String constructor = 'passportElementInternalPassport';

  static PassportElementInternalPassport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementInternalPassport(
      internalPassport: IdentityDocument.fromJson(
          json['internal_passport'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'internal_passport': internalPassport.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
