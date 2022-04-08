import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a video chat (a group call bound to a chat). Available only for
/// basic groups, supergroups and channels; requires can_manage_video_chats
/// rights
/// Returns [GroupCallId]
@immutable
class CreateVideoChat extends TdFunction {
  const CreateVideoChat({
    required this.chatId,
    required this.title,
    required this.startDate,
  });

  /// [chatId] Chat identifier, in which the video chat will be created
  final int chatId;

  /// [title] Group call title; if empty, chat title will be used
  final String title;

  /// [startDate] Point in time (Unix timestamp) when the group call is supposed
  /// to be started by an administrator; 0 to start the video chat immediately.
  /// The date must be at least 10 seconds and at most 8 days in the future
  final int startDate;

  static const String constructor = 'createVideoChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'title': title,
        'start_date': startDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
