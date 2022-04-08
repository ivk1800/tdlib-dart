import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's bank statement
@immutable
class PassportElementBankStatement extends PassportElement {
  const PassportElementBankStatement({
    required this.bankStatement,
  });

  /// [bankStatement] Bank statement
  final PersonalDocument bankStatement;

  static const String constructor = 'passportElementBankStatement';

  static PassportElementBankStatement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementBankStatement(
      bankStatement: PersonalDocument.fromJson(json['bank_statement'])!,
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
