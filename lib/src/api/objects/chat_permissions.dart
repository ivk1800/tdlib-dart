import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes actions that a user is allowed to take in a chat
@immutable
class ChatPermissions extends TdObject {
  const ChatPermissions({
    required this.canSendBasicMessages,
    required this.canSendAudios,
    required this.canSendDocuments,
    required this.canSendPhotos,
    required this.canSendVideos,
    required this.canSendVideoNotes,
    required this.canSendVoiceNotes,
    required this.canSendPolls,
    required this.canSendOtherMessages,
    required this.canAddWebPagePreviews,
    required this.canChangeInfo,
    required this.canInviteUsers,
    required this.canPinMessages,
    required this.canManageTopics,
  });

  /// [canSendBasicMessages] True, if the user can send text messages, contacts,
  /// giveaways, invoices, locations, and venues
  final bool canSendBasicMessages;

  /// [canSendAudios] True, if the user can send music files
  final bool canSendAudios;

  /// [canSendDocuments] True, if the user can send documents
  final bool canSendDocuments;

  /// [canSendPhotos] True, if the user can send photos
  final bool canSendPhotos;

  /// [canSendVideos] True, if the user can send videos
  final bool canSendVideos;

  /// [canSendVideoNotes] True, if the user can send video notes
  final bool canSendVideoNotes;

  /// [canSendVoiceNotes] True, if the user can send voice notes
  final bool canSendVoiceNotes;

  /// [canSendPolls] True, if the user can send polls
  final bool canSendPolls;

  /// [canSendOtherMessages] True, if the user can send animations, games,
  /// stickers, and dice and use inline bots
  final bool canSendOtherMessages;

  /// [canAddWebPagePreviews] True, if the user may add a web page preview to
  /// their messages
  final bool canAddWebPagePreviews;

  /// [canChangeInfo] True, if the user can change the chat title, photo, and
  /// other settings
  final bool canChangeInfo;

  /// [canInviteUsers] True, if the user can invite new users to the chat
  final bool canInviteUsers;

  /// [canPinMessages] True, if the user can pin messages
  final bool canPinMessages;

  /// [canManageTopics] True, if the user can manage topics
  final bool canManageTopics;

  static const String constructor = 'chatPermissions';

  static ChatPermissions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPermissions(
      canSendBasicMessages: json['can_send_basic_messages'] as bool,
      canSendAudios: json['can_send_audios'] as bool,
      canSendDocuments: json['can_send_documents'] as bool,
      canSendPhotos: json['can_send_photos'] as bool,
      canSendVideos: json['can_send_videos'] as bool,
      canSendVideoNotes: json['can_send_video_notes'] as bool,
      canSendVoiceNotes: json['can_send_voice_notes'] as bool,
      canSendPolls: json['can_send_polls'] as bool,
      canSendOtherMessages: json['can_send_other_messages'] as bool,
      canAddWebPagePreviews: json['can_add_web_page_previews'] as bool,
      canChangeInfo: json['can_change_info'] as bool,
      canInviteUsers: json['can_invite_users'] as bool,
      canPinMessages: json['can_pin_messages'] as bool,
      canManageTopics: json['can_manage_topics'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_send_basic_messages': canSendBasicMessages,
        'can_send_audios': canSendAudios,
        'can_send_documents': canSendDocuments,
        'can_send_photos': canSendPhotos,
        'can_send_videos': canSendVideos,
        'can_send_video_notes': canSendVideoNotes,
        'can_send_voice_notes': canSendVoiceNotes,
        'can_send_polls': canSendPolls,
        'can_send_other_messages': canSendOtherMessages,
        'can_add_web_page_previews': canAddWebPagePreviews,
        'can_change_info': canChangeInfo,
        'can_invite_users': canInviteUsers,
        'can_pin_messages': canPinMessages,
        'can_manage_topics': canManageTopics,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
