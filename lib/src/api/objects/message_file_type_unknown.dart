import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The messages was exported from a chat of unknown type
class MessageFileTypeUnknown extends MessageFileType {
  const MessageFileTypeUnknown();

  static const String CONSTRUCTOR = 'messageFileTypeUnknown';

  static MessageFileTypeUnknown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageFileTypeUnknown();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
