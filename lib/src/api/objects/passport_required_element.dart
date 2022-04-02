import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains a description of the required Telegram Passport element that was
/// requested by a service
class PassportRequiredElement extends TdObject {
  PassportRequiredElement({required this.suitableElements});

  /// [suitableElements] List of Telegram Passport elements any of which is
  /// enough to provide
  final List<PassportSuitableElement> suitableElements;

  static const String CONSTRUCTOR = 'passportRequiredElement';

  static PassportRequiredElement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportRequiredElement(
        suitableElements: List<PassportSuitableElement>.from(
            (json['suitable_elements'] ?? [])
                .map((item) => PassportSuitableElement.fromJson(item))
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'suitable_elements':
            suitableElements.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
