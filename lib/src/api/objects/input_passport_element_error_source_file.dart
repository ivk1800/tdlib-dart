import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The file contains an error. The error is considered resolved when the file
/// changes
@immutable
class InputPassportElementErrorSourceFile
    extends InputPassportElementErrorSource {
  const InputPassportElementErrorSourceFile({
    required this.fileHash,
  });

  /// [fileHash] Current hash of the file which has the error
  final String fileHash;

  static const String constructor = 'inputPassportElementErrorSourceFile';

  static InputPassportElementErrorSourceFile? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceFile(
      fileHash: json['file_hash'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_hash': fileHash,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
