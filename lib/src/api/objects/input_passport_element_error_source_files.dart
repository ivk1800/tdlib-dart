import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The list of attached files contains an error. The error is considered
/// resolved when the file list changes
class InputPassportElementErrorSourceFiles
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceFiles({required this.fileHashes});

  /// [fileHashes] Current hashes of all attached files
  final List<String> fileHashes;

  static const String CONSTRUCTOR = 'inputPassportElementErrorSourceFiles';

  static InputPassportElementErrorSourceFiles? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceFiles(
        fileHashes: List<String>.from(
            (json['file_hashes'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'file_hashes': fileHashes.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
