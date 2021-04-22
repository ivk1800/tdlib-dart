import '../tdapi.dart';

/// Represents a file
class File extends TdObject {
  File(
      {required this.id,
      required this.size,
      required this.expectedSize,
      required this.local,
      required this.remote});

  /// [id] Unique file identifier
  final int id;

  /// [size] File size; 0 if unknown
  final int size;

  /// [expectedSize] Expected file size in case the exact file size is unknown,
  /// but an approximate size is known. Can be used to show download/upload
  /// progress
  final int expectedSize;

  /// [local] Information about the local copy of the file
  final LocalFile local;

  /// [remote] Information about the remote copy of the file
  final RemoteFile remote;

  static const String CONSTRUCTOR = 'file';

  static File? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return File(
        id: json['id'],
        size: json['size'],
        expectedSize: json['expected_size'],
        local: LocalFile.fromJson(json['local'])!,
        remote: RemoteFile.fromJson(json['remote'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'size': this.size,
        'expected_size': this.expectedSize,
        'local': this.local.toJson(),
        'remote': this.remote.toJson(),
        '@type': CONSTRUCTOR
      };
}
