import '../tdapi.dart';

/// A Telegram Passport element containing the user's utility bill
class PassportElementUtilityBill extends PassportElement {
  PassportElementUtilityBill({required this.utilityBill});

  /// [utilityBill] Utility bill
  final PersonalDocument utilityBill;

  static const String CONSTRUCTOR = 'passportElementUtilityBill';

  static PassportElementUtilityBill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementUtilityBill(
        utilityBill: PersonalDocument.fromJson(json['utility_bill'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'utility_bill': this.utilityBill.toJson(), '@type': CONSTRUCTOR};
}
