import '../tdapi.dart';

/// File with the date it was uploaded
class DatedFile extends TdObject {
  DatedFile({required this.file, required this.date});

  /// [file] The file
  final File file;

  /// [date] Point in time (Unix timestamp) when the file was uploaded
  final int date;

  static const String CONSTRUCTOR = 'datedFile';

  static DatedFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DatedFile(file: File.fromJson(json['file'])!, date: json['date']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file': this.file.toJson(), 'date': this.date, '@type': CONSTRUCTOR};
}
