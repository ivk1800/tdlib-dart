import '../tdapi.dart';

/// The selfie contains an error. The error is considered resolved when the
/// file with the selfie changes
class InputPassportElementErrorSourceSelfie
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceSelfie({required this.fileHash});

  /// [fileHash] Current hash of the file containing the selfie
  final String fileHash;

  static const String CONSTRUCTOR = 'inputPassportElementErrorSourceSelfie';

  static InputPassportElementErrorSourceSelfie? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceSelfie(fileHash: json['file_hash']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_hash': this.fileHash, '@type': CONSTRUCTOR};
}
