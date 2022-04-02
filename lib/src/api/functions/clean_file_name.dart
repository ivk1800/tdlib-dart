import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Removes potentially dangerous characters from the name of a file. The
/// encoding of the file name is supposed to be UTF-8. Returns an empty string
/// on failure. Can be called synchronously
/// Returns [Text]
class CleanFileName extends TdFunction {
  CleanFileName({required this.fileName});

  /// [fileName] File name or path to the file
  final String fileName;

  static const String CONSTRUCTOR = 'cleanFileName';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_name': this.fileName, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
