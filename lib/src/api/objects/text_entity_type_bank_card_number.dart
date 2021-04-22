import '../tdapi.dart';

/// A bank card number. The getBankCardInfo method can be used to get
/// information about the bank card
class TextEntityTypeBankCardNumber extends TextEntityType {
  const TextEntityTypeBankCardNumber();

  static const String CONSTRUCTOR = 'textEntityTypeBankCardNumber';

  static TextEntityTypeBankCardNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeBankCardNumber();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
