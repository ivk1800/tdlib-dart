import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's bank
/// statement
class InputPassportElementBankStatement extends InputPassportElement {
  InputPassportElementBankStatement({required this.bankStatement});

  /// [bankStatement] The bank statement to be saved
  final InputPersonalDocument bankStatement;

  static const String CONSTRUCTOR = 'inputPassportElementBankStatement';

  static InputPassportElementBankStatement? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementBankStatement(
        bankStatement: InputPersonalDocument.fromJson(json['bank_statement'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'bank_statement': this.bankStatement.toJson(), '@type': CONSTRUCTOR};
}
