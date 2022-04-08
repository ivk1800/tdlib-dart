import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The messages was exported from a chat of unknown type
@immutable
class MessageFileTypeUnknown extends MessageFileType {
  const MessageFileTypeUnknown();

  static const String constructor = 'messageFileTypeUnknown';

  static MessageFileTypeUnknown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageFileTypeUnknown();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
