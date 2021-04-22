import '../tdapi.dart';

/// Returns information about a bank card
/// Returns [BankCardInfo]
class GetBankCardInfo extends TdFunction {
  GetBankCardInfo({required this.bankCardNumber});

  /// [bankCardNumber] The bank card number
  final String bankCardNumber;

  static const String CONSTRUCTOR = 'getBankCardInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'bank_card_number': this.bankCardNumber, '@type': CONSTRUCTOR};
}
