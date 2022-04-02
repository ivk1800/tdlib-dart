import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The element contains an error in an unspecified place. The error will be
/// considered resolved when new data is added
class PassportElementErrorSourceUnspecified extends PassportElementErrorSource {
  const PassportElementErrorSourceUnspecified();

  static const String CONSTRUCTOR = 'passportElementErrorSourceUnspecified';

  static PassportElementErrorSourceUnspecified? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceUnspecified();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
