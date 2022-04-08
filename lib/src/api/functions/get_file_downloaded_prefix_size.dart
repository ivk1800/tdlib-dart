import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns file downloaded prefix size from a given offset, in bytes
/// Returns [Count]
@immutable
class GetFileDownloadedPrefixSize extends TdFunction {
  const GetFileDownloadedPrefixSize({
    required this.fileId,
    required this.offset,
  });

  /// [fileId] Identifier of the file
  final int fileId;

  /// [offset] Offset from which downloaded prefix size needs to be calculated
  final int offset;

  static const String constructor = 'getFileDownloadedPrefixSize';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        'offset': offset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
