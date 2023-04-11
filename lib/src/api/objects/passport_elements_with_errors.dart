import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Passport elements and corresponding
/// errors
@immutable
class PassportElementsWithErrors extends TdObject {
  const PassportElementsWithErrors({
    required this.elements,
    required this.errors,
  });

  /// [elements] Telegram Passport elements
  final List<PassportElement> elements;

  /// [errors] Errors in the elements that are already available
  final List<PassportElementError> errors;

  static const String constructor = 'passportElementsWithErrors';

  static PassportElementsWithErrors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementsWithErrors(
      elements: List<PassportElement>.from(
          ((json['elements'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PassportElement.fromJson(item))
              .toList()),
      errors: List<PassportElementError>.from(
          ((json['errors'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PassportElementError.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'elements': elements.map((item) => item.toJson()).toList(),
        'errors': errors.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
