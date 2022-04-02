import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The front side of the document contains an error. The error is considered
/// resolved when the file with the front side of the document changes
class InputPassportElementErrorSourceFrontSide
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceFrontSide({required this.fileHash});

  /// [fileHash] Current hash of the file containing the front side
  final String fileHash;

  static const String CONSTRUCTOR = 'inputPassportElementErrorSourceFrontSide';

  static InputPassportElementErrorSourceFrontSide? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceFrontSide(
        fileHash: json['file_hash']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_hash': this.fileHash, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
