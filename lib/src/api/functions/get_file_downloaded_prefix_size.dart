import '../tdapi.dart';

/// Returns file downloaded prefix size from a given offset
/// Returns [Count]
class GetFileDownloadedPrefixSize extends TdFunction {
  GetFileDownloadedPrefixSize({required this.fileId, required this.offset});

  /// [fileId] Identifier of the file
  final int fileId;

  /// [offset] Offset from which downloaded prefix size should be calculated
  final int offset;

  static const String CONSTRUCTOR = 'getFileDownloadedPrefixSize';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_id': this.fileId, 'offset': this.offset, '@type': CONSTRUCTOR};
}
