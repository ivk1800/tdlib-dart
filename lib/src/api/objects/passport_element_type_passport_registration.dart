import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the registration page of the user's
/// passport
@immutable
class PassportElementTypePassportRegistration extends PassportElementType {
  const PassportElementTypePassportRegistration();

  static const String constructor = 'passportElementTypePassportRegistration';

  static PassportElementTypePassportRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypePassportRegistration();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
