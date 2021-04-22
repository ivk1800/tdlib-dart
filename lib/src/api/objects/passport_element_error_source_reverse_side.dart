import '../tdapi.dart';

/// The reverse side of the document contains an error. The error will be
/// considered resolved when the file with the reverse side changes
class PassportElementErrorSourceReverseSide extends PassportElementErrorSource {
  const PassportElementErrorSourceReverseSide();

  static const String CONSTRUCTOR = 'passportElementErrorSourceReverseSide';

  static PassportElementErrorSourceReverseSide? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceReverseSide();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
