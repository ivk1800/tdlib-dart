import '../tdapi.dart';

/// Returns information about a file by its remote ID; this is an offline
/// request. Can be used to register a URL as a file for further uploading, or
/// sending as a message. Even the request succeeds, the file can be used only
/// if it is still accessible to the user.. For example, if the file is from a
/// message, then the message must be not deleted and accessible to the user.
/// If the file database is disabled, then the corresponding object with the
/// file must be preloaded by the application
/// Returns [File]
class GetRemoteFile extends TdFunction {
  GetRemoteFile({required this.remoteFileId, this.fileType});

  /// [remoteFileId] Remote identifier of the file to get
  final String remoteFileId;

  /// [fileType] File type; pass null if unknown
  final FileType? fileType;

  static const String CONSTRUCTOR = 'getRemoteFile';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'remote_file_id': this.remoteFileId,
        'file_type': this.fileType?.toJson(),
        '@type': CONSTRUCTOR
      };
}
