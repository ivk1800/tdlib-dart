import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Imports messages exported from another app
/// Returns [Ok]
@immutable
class ImportMessages extends TdFunction {
  const ImportMessages({
    required this.chatId,
    required this.messageFile,
    required this.attachedFiles,
  });

  /// [chatId] Identifier of a chat to which the messages will be imported. It
  /// must be an identifier of a private chat with a mutual contact or an
  /// identifier of a supergroup chat with can_change_info member right
  final int chatId;

  /// [messageFile] File with messages to import. Only inputFileLocal and
  /// inputFileGenerated are supported. The file must not be previously uploaded
  final InputFile messageFile;

  /// [attachedFiles] Files used in the imported messages. Only inputFileLocal
  /// and inputFileGenerated are supported. The files must not be previously
  /// uploaded
  final List<InputFile> attachedFiles;

  static const String constructor = 'importMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_file': messageFile.toJson(),
        'attached_files': attachedFiles.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
