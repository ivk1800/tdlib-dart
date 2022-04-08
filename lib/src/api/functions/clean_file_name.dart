import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes potentially dangerous characters from the name of a file. The
/// encoding of the file name is supposed to be UTF-8. Returns an empty string
/// on failure. Can be called synchronously
/// Returns [Text]
@immutable
class CleanFileName extends TdFunction {
  const CleanFileName({
    required this.fileName,
  });

  /// [fileName] File name or path to the file
  final String fileName;

  static const String constructor = 'cleanFileName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_name': fileName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
