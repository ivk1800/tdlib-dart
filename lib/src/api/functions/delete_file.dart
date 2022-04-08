import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes a file from the TDLib file cache
/// Returns [Ok]
@immutable
class DeleteFile extends TdFunction {
  const DeleteFile({
    required this.fileId,
  });

  /// [fileId] Identifier of the file to delete
  final int fileId;

  static const String constructor = 'deleteFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
