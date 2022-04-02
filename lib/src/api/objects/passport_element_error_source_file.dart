import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The file contains an error. The error will be considered resolved when the
/// file changes
class PassportElementErrorSourceFile extends PassportElementErrorSource {
  PassportElementErrorSourceFile({required this.fileIndex});

  /// [fileIndex] Index of a file with the error
  final int fileIndex;

  static const String CONSTRUCTOR = 'passportElementErrorSourceFile';

  static PassportElementErrorSourceFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementErrorSourceFile(fileIndex: json['file_index']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_index': this.fileIndex, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
