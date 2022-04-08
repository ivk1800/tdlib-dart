import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat photo was edited
@immutable
class PushMessageContentChatChangePhoto extends PushMessageContent {
  const PushMessageContentChatChangePhoto();

  static const String constructor = 'pushMessageContentChatChangePhoto';

  static PushMessageContentChatChangePhoto? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentChatChangePhoto();
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
