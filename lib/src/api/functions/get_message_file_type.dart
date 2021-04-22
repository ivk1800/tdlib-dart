import '../tdapi.dart';

/// Returns information about a file with messages exported from another app
/// Returns [MessageFileType]
class GetMessageFileType extends TdFunction {
  GetMessageFileType({required this.messageFileHead});

  /// [messageFileHead] Beginning of the message file; up to 100 first lines
  final String messageFileHead;

  static const String CONSTRUCTOR = 'getMessageFileType';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'message_file_head': this.messageFileHead, '@type': CONSTRUCTOR};
}
