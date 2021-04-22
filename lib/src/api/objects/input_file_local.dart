import '../tdapi.dart';

/// A file defined by a local path
class InputFileLocal extends InputFile {
  InputFileLocal({required this.path});

  /// [path] Local path to the file
  final String path;

  static const String CONSTRUCTOR = 'inputFileLocal';

  static InputFileLocal? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputFileLocal(path: json['path']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'path': this.path, '@type': CONSTRUCTOR};
}
