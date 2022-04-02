import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A Telegram Passport element containing the user's identity card
class PassportElementTypeIdentityCard extends PassportElementType {
  const PassportElementTypeIdentityCard();

  static const String CONSTRUCTOR = 'passportElementTypeIdentityCard';

  static PassportElementTypeIdentityCard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeIdentityCard();
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
