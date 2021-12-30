import '../tdapi.dart';

/// The log is written to a file
class LogStreamFile extends LogStream {
  LogStreamFile(
      {required this.path,
      required this.maxFileSize,
      required this.redirectStderr});

  /// [path] Path to the file to where the internal TDLib log will be written
  final String path;

  /// [maxFileSize] The maximum size of the file to where the internal TDLib log
  /// is written before the file will automatically be rotated, in bytes
  final int maxFileSize;

  /// [redirectStderr] Pass true to additionally redirect stderr to the log
  /// file. Ignored on Windows
  final bool redirectStderr;

  static const String CONSTRUCTOR = 'logStreamFile';

  static LogStreamFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LogStreamFile(
        path: json['path'],
        maxFileSize: json['max_file_size'],
        redirectStderr: json['redirect_stderr']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'path': this.path,
        'max_file_size': this.maxFileSize,
        'redirect_stderr': this.redirectStderr,
        '@type': CONSTRUCTOR
      };
}
