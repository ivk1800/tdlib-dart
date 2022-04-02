import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about a file; this is an offline request
/// Returns [File]
class GetFile extends TdFunction {
  GetFile({required this.fileId});

  /// [fileId] Identifier of the file to get
  final int fileId;

  static const String CONSTRUCTOR = 'getFile';

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
