import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// File with the date it was uploaded
@immutable
class DatedFile extends TdObject {
  const DatedFile({
    required this.file,
    required this.date,
  });

  /// [file] The file
  final File file;

  /// [date] Point in time (Unix timestamp) when the file was uploaded
  final int date;

  static const String constructor = 'datedFile';

  static DatedFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DatedFile(
      file: File.fromJson(json['file'])!,
      date: json['date'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file': file.toJson(),
        'date': date,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
