import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about a Telegram Passport elements and corresponding
/// errors
class PassportElementsWithErrors extends TdObject {
  PassportElementsWithErrors({required this.elements, required this.errors});

  /// [elements] Telegram Passport elements
  final List<PassportElement> elements;

  /// [errors] Errors in the elements that are already available
  final List<PassportElementError> errors;

  static const String CONSTRUCTOR = 'passportElementsWithErrors';

  static PassportElementsWithErrors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementsWithErrors(
        elements: List<PassportElement>.from((json['elements'] ?? [])
            .map((item) => PassportElement.fromJson(item))
            .toList()),
        errors: List<PassportElementError>.from((json['errors'] ?? [])
            .map((item) => PassportElementError.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'elements': elements.map((item) => item.toJson()).toList(),
        'errors': errors.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
