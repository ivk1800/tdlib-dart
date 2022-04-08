import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a file with messages exported from another app
/// Returns [MessageFileType]
@immutable
class GetMessageFileType extends TdFunction {
  const GetMessageFileType({
    required this.messageFileHead,
  });

  /// [messageFileHead] Beginning of the message file; up to 100 first lines
  final String messageFileHead;

  static const String constructor = 'getMessageFileType';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_file_head': messageFileHead,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
