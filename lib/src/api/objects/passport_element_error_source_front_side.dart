import '../tdapi.dart';

/// The front side of the document contains an error. The error will be
/// considered resolved when the file with the front side changes
class PassportElementErrorSourceFrontSide extends PassportElementErrorSource {
  const PassportElementErrorSourceFrontSide();

  static const String CONSTRUCTOR = 'passportElementErrorSourceFrontSide';

  static PassportElementErrorSourceFrontSide? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceFrontSide();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
