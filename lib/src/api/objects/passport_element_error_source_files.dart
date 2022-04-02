import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The list of attached files contains an error. The error will be considered
/// resolved when the list of files changes
class PassportElementErrorSourceFiles extends PassportElementErrorSource {
  const PassportElementErrorSourceFiles();

  static const String CONSTRUCTOR = 'passportElementErrorSourceFiles';

  static PassportElementErrorSourceFiles? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceFiles();
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
