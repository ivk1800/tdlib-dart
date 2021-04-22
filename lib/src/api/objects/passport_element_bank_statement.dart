import '../tdapi.dart';

/// A Telegram Passport element containing the user's bank statement
class PassportElementBankStatement extends PassportElement {
  PassportElementBankStatement({required this.bankStatement});

  /// [bankStatement] Bank statement
  final PersonalDocument bankStatement;

  static const String CONSTRUCTOR = 'passportElementBankStatement';

  static PassportElementBankStatement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementBankStatement(
        bankStatement: PersonalDocument.fromJson(json['bank_statement'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'bank_statement': this.bankStatement.toJson(), '@type': CONSTRUCTOR};
}
