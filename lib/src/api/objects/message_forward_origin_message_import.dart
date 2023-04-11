import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message was imported from an exported message history
@immutable
class MessageForwardOriginMessageImport extends MessageForwardOrigin {
  const MessageForwardOriginMessageImport({
    required this.senderName,
  });

  /// [senderName] Name of the sender
  final String senderName;

  static const String constructor = 'messageForwardOriginMessageImport';

  static MessageForwardOriginMessageImport? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForwardOriginMessageImport(
      senderName: json['sender_name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_name': senderName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
