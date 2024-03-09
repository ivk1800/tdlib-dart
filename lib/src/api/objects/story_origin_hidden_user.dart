import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The original story was sent by an unknown user
@immutable
class StoryOriginHiddenUser extends StoryOrigin {
  const StoryOriginHiddenUser({
    required this.senderName,
  });

  /// [senderName] Name of the story sender
  final String senderName;

  static const String constructor = 'storyOriginHiddenUser';

  static StoryOriginHiddenUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryOriginHiddenUser(
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
