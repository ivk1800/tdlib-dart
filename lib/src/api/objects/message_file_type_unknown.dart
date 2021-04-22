import '../tdapi.dart';

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
}
