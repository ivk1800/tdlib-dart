import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a part of a file
@immutable
class FilePart extends TdObject {
  const FilePart({
    required this.data,
  });

  /// [data] File bytes
  final String data;

  static const String constructor = 'filePart';

  static FilePart? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FilePart(
      data: json['data'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
