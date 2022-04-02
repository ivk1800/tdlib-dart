import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Deletes a file from the TDLib file cache
/// Returns [Ok]
class DeleteFile extends TdFunction {
  DeleteFile({required this.fileId});

  /// [fileId] Identifier of the file to delete
  final int fileId;

  static const String CONSTRUCTOR = 'deleteFile';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_id': this.fileId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
