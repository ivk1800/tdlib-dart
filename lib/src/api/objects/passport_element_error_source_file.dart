import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The file contains an error. The error will be considered resolved when the
/// file changes
@immutable
class PassportElementErrorSourceFile extends PassportElementErrorSource {
  const PassportElementErrorSourceFile({
    required this.fileIndex,
  });

  /// [fileIndex] Index of a file with the error
  final int fileIndex;

  static const String constructor = 'passportElementErrorSourceFile';

  static PassportElementErrorSourceFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementErrorSourceFile(
      fileIndex: json['file_index'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_index': fileIndex,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
