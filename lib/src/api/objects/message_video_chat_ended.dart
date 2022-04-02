import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A message with information about an ended video chat
class MessageVideoChatEnded extends MessageContent {
  MessageVideoChatEnded({required this.duration});

  /// [duration] Call duration, in seconds
  final int duration;

  static const String CONSTRUCTOR = 'messageVideoChatEnded';

  static MessageVideoChatEnded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideoChatEnded(duration: json['duration']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'duration': this.duration, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
