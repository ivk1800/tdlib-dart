import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's bank
/// statement
@immutable
class InputPassportElementBankStatement extends InputPassportElement {
  const InputPassportElementBankStatement({
    required this.bankStatement,
  });

  /// [bankStatement] The bank statement to be saved
  final InputPersonalDocument bankStatement;

  static const String constructor = 'inputPassportElementBankStatement';

  static InputPassportElementBankStatement? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementBankStatement(
      bankStatement: InputPersonalDocument.fromJson(
          json['bank_statement'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bank_statement': bankStatement.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
