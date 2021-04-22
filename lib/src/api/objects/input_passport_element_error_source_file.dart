import '../tdapi.dart';

/// The file contains an error. The error is considered resolved when the file
/// changes
class InputPassportElementErrorSourceFile
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceFile({required this.fileHash});

  /// [fileHash] Current hash of the file which has the error
  final String fileHash;

  static const String CONSTRUCTOR = 'inputPassportElementErrorSourceFile';

  static InputPassportElementErrorSourceFile? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceFile(fileHash: json['file_hash']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_hash': this.fileHash, '@type': CONSTRUCTOR};
}
