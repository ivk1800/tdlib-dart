import '../tdapi.dart';

/// A Telegram Passport element containing the user's bank statement
class PassportElementTypeBankStatement extends PassportElementType {
  const PassportElementTypeBankStatement();

  static const String CONSTRUCTOR = 'passportElementTypeBankStatement';

  static PassportElementTypeBankStatement? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeBankStatement();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
