import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video chat or live stream has ended
@immutable
class PushMessageContentVideoChatEnded extends PushMessageContent {
  const PushMessageContentVideoChatEnded();

  static const String constructor = 'pushMessageContentVideoChatEnded';

  static PushMessageContentVideoChatEnded? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentVideoChatEnded();
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
