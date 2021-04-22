import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's utility bill
class InputPassportElementUtilityBill extends InputPassportElement {
  InputPassportElementUtilityBill({required this.utilityBill});

  /// [utilityBill] The utility bill to be saved
  final InputPersonalDocument utilityBill;

  static const String CONSTRUCTOR = 'inputPassportElementUtilityBill';

  static InputPassportElementUtilityBill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementUtilityBill(
        utilityBill: InputPersonalDocument.fromJson(json['utility_bill'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'utility_bill': this.utilityBill.toJson(), '@type': CONSTRUCTOR};
}
