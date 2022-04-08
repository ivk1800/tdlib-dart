import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a file; this is an offline request
/// Returns [File]
@immutable
class GetFile extends TdFunction {
  const GetFile({
    required this.fileId,
  });

  /// [fileId] Identifier of the file to get
  final int fileId;

  static const String constructor = 'getFile';

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
