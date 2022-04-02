import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
