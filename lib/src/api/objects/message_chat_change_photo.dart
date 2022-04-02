import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An updated chat photo
class MessageChatChangePhoto extends MessageContent {
  MessageChatChangePhoto({required this.photo});

  /// [photo] New chat photo
  final ChatPhoto photo;

  static const String CONSTRUCTOR = 'messageChatChangePhoto';

  static MessageChatChangePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatChangePhoto(photo: ChatPhoto.fromJson(json['photo'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'photo': this.photo.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
