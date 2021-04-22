import '../tdapi.dart';

/// Information about a file was updated
class UpdateFile extends Update {
  UpdateFile({required this.file});

  /// [file] New data about the file
  final File file;

  static const String CONSTRUCTOR = 'updateFile';

  static UpdateFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFile(file: File.fromJson(json['file'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file': this.file.toJson(), '@type': CONSTRUCTOR};
}
