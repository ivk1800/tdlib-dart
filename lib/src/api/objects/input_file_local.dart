import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A file defined by a local path
@immutable
class InputFileLocal extends InputFile {
  const InputFileLocal({
    required this.path,
  });

  /// [path] Local path to the file
  final String path;

  static const String constructor = 'inputFileLocal';

  static InputFileLocal? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputFileLocal(
      path: json['path'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'path': path,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
