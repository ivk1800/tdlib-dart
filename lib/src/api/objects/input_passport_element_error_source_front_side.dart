import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The front side of the document contains an error. The error is considered
/// resolved when the file with the front side of the document changes
@immutable
class InputPassportElementErrorSourceFrontSide
    extends InputPassportElementErrorSource {
  const InputPassportElementErrorSourceFrontSide({
    required this.fileHash,
  });

  /// [fileHash] Current hash of the file containing the front side
  final String fileHash;

  static const String constructor = 'inputPassportElementErrorSourceFrontSide';

  static InputPassportElementErrorSourceFrontSide? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceFrontSide(
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
