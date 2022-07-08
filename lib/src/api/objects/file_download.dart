import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a file added to file download list
@immutable
class FileDownload extends TdObject {
  const FileDownload({
    required this.fileId,
    required this.message,
    required this.addDate,
    required this.completeDate,
    required this.isPaused,
  });

  /// [fileId] File identifier
  final int fileId;

  /// [message] The message with the file
  final Message message;

  /// [addDate] Point in time (Unix timestamp) when the file was added to the
  /// download list
  final int addDate;

  /// [completeDate] Point in time (Unix timestamp) when the file downloading
  /// was completed; 0 if the file downloading isn't completed
  final int completeDate;

  /// [isPaused] True, if downloading of the file is paused
  final bool isPaused;

  static const String constructor = 'fileDownload';

  static FileDownload? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FileDownload(
      fileId: json['file_id'],
      message: Message.fromJson(json['message'])!,
      addDate: json['add_date'],
      completeDate: json['complete_date'],
      isPaused: json['is_paused'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        'message': message.toJson(),
        'add_date': addDate,
        'complete_date': completeDate,
        'is_paused': isPaused,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
