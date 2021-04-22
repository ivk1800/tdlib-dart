import '../tdapi.dart';

/// Returns the MIME type of a file, guessed by its extension. Returns an
/// empty string on failure. Can be called synchronously
/// Returns [Text]
class GetFileMimeType extends TdFunction {
  GetFileMimeType({required this.fileName});

  /// [fileName] The name of the file or path to the file
  final String fileName;

  static const String CONSTRUCTOR = 'getFileMimeType';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_name': this.fileName, '@type': CONSTRUCTOR};
}
