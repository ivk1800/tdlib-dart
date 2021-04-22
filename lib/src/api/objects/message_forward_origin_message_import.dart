import '../tdapi.dart';

/// The message was imported from an exported message history
class MessageForwardOriginMessageImport extends MessageForwardOrigin {
  MessageForwardOriginMessageImport({required this.senderName});

  /// [senderName] Name of the sender
  final String senderName;

  static const String CONSTRUCTOR = 'messageForwardOriginMessageImport';

  static MessageForwardOriginMessageImport? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForwardOriginMessageImport(senderName: json['sender_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sender_name': this.senderName, '@type': CONSTRUCTOR};
}
