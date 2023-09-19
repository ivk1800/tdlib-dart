import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A file defined by its unique identifier
@immutable
class InputFileId extends InputFile {
  const InputFileId({
    required this.id,
  });

  /// [id] Unique file identifier
  final int id;

  static const String constructor = 'inputFileId';

  static InputFileId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputFileId(
      id: json['id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
