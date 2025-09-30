import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video chat or live stream was started
@immutable
class PushMessageContentVideoChatStarted extends PushMessageContent {
  const PushMessageContentVideoChatStarted();

  static const String constructor = 'pushMessageContentVideoChatStarted';

  static PushMessageContentVideoChatStarted? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentVideoChatStarted();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
