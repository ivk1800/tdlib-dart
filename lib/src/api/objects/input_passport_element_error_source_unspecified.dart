import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The element contains an error in an unspecified place. The error will be
/// considered resolved when new data is added
@immutable
class InputPassportElementErrorSourceUnspecified
    extends InputPassportElementErrorSource {
  const InputPassportElementErrorSourceUnspecified({
    required this.elementHash,
  });

  /// [elementHash] Current hash of the entire element
  final String elementHash;

  static const String constructor =
      'inputPassportElementErrorSourceUnspecified';

  static InputPassportElementErrorSourceUnspecified? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceUnspecified(
      elementHash: json['element_hash'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'element_hash': elementHash,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
