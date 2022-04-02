import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about saved Telegram Passport elements
class PassportElements extends TdObject {
  PassportElements({required this.elements});

  /// [elements] Telegram Passport elements
  final List<PassportElement> elements;

  static const String CONSTRUCTOR = 'passportElements';

  static PassportElements? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElements(
        elements: List<PassportElement>.from((json['elements'] ?? [])
            .map((item) => PassportElement.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'elements': elements.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
