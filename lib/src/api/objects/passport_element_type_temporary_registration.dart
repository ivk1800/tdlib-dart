import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A Telegram Passport element containing the user's temporary registration
class PassportElementTypeTemporaryRegistration extends PassportElementType {
  const PassportElementTypeTemporaryRegistration();

  static const String CONSTRUCTOR = 'passportElementTypeTemporaryRegistration';

  static PassportElementTypeTemporaryRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeTemporaryRegistration();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
