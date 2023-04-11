import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The selfie contains an error. The error is considered resolved when the
/// file with the selfie changes
@immutable
class InputPassportElementErrorSourceSelfie
    extends InputPassportElementErrorSource {
  const InputPassportElementErrorSourceSelfie({
    required this.fileHash,
  });

  /// [fileHash] Current hash of the file containing the selfie
  final String fileHash;

  static const String constructor = 'inputPassportElementErrorSourceSelfie';

  static InputPassportElementErrorSourceSelfie? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceSelfie(
      fileHash: json['file_hash'] as String,
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
