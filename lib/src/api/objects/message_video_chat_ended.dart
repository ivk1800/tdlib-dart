import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with information about an ended video chat
@immutable
class MessageVideoChatEnded extends MessageContent {
  const MessageVideoChatEnded({
    required this.duration,
  });

  /// [duration] Call duration, in seconds
  final int duration;

  static const String constructor = 'messageVideoChatEnded';

  static MessageVideoChatEnded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideoChatEnded(
      duration: json['duration'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'duration': duration,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
