import '../tdapi.dart';

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
}
