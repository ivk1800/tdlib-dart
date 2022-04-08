import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a file
@immutable
class File extends TdObject {
  const File({
    required this.id,
    required this.size,
    required this.expectedSize,
    required this.local,
    required this.remote,
  });

  /// [id] Unique file identifier
  final int id;

  /// [size] File size, in bytes; 0 if unknown
  final int size;

  /// [expectedSize] Approximate file size in bytes in case the exact file size
  /// is unknown. Can be used to show download/upload progress
  final int expectedSize;

  /// [local] Information about the local copy of the file
  final LocalFile local;

  /// [remote] Information about the remote copy of the file
  final RemoteFile remote;

  static const String constructor = 'file';

  static File? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return File(
      id: json['id'],
      size: json['size'],
      expectedSize: json['expected_size'],
      local: LocalFile.fromJson(json['local'])!,
      remote: RemoteFile.fromJson(json['remote'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'size': size,
        'expected_size': expectedSize,
        'local': local.toJson(),
        'remote': remote.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
