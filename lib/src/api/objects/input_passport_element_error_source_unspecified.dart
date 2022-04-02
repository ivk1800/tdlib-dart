import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The element contains an error in an unspecified place. The error will be
/// considered resolved when new data is added
class InputPassportElementErrorSourceUnspecified
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceUnspecified({required this.elementHash});

  /// [elementHash] Current hash of the entire element
  final String elementHash;

  static const String CONSTRUCTOR =
      'inputPassportElementErrorSourceUnspecified';

  static InputPassportElementErrorSourceUnspecified? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceUnspecified(
        elementHash: json['element_hash']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'element_hash': this.elementHash, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
