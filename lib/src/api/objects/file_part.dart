import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains a part of a file
class FilePart extends TdObject {
  FilePart({required this.data});

  /// [data] File bytes
  final String data;

  static const String CONSTRUCTOR = 'filePart';

  static FilePart? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FilePart(data: json['data']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'data': this.data, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
