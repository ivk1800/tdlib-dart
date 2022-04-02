import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A chat photo was edited
class PushMessageContentChatChangePhoto extends PushMessageContent {
  const PushMessageContentChatChangePhoto();

  static const String CONSTRUCTOR = 'pushMessageContentChatChangePhoto';

  static PushMessageContentChatChangePhoto? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentChatChangePhoto();
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
