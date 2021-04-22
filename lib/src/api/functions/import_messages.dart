import '../tdapi.dart';

/// Imports messages exported from another app
/// Returns [Ok]
class ImportMessages extends TdFunction {
  ImportMessages(
      {required this.chatId,
      required this.messageFile,
      required this.attachedFiles});

  /// [chatId] Identifier of a chat to which the messages will be imported. It
  /// must be an identifier of a private chat with a mutual contact or an
  /// identifier of a supergroup chat with can_change_info administrator right
  final int chatId;

  /// [messageFile] File with messages to import. Only inputFileLocal and
  /// inputFileGenerated are supported. The file must not be previously uploaded
  final InputFile messageFile;

  /// [attachedFiles] Files used in the imported messages. Only inputFileLocal
  /// and inputFileGenerated are supported. The files must not be previously
  /// uploaded
  final List<InputFile> attachedFiles;

  static const String CONSTRUCTOR = 'importMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_file': this.messageFile.toJson(),
        'attached_files': attachedFiles.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
