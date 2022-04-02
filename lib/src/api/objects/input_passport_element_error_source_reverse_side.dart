import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The reverse side of the document contains an error. The error is
/// considered resolved when the file with the reverse side of the document
/// changes
class InputPassportElementErrorSourceReverseSide
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceReverseSide({required this.fileHash});

  /// [fileHash] Current hash of the file containing the reverse side
  final String fileHash;

  static const String CONSTRUCTOR =
      'inputPassportElementErrorSourceReverseSide';

  static InputPassportElementErrorSourceReverseSide? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceReverseSide(
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
