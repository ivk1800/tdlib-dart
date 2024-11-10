import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains properties of a message and describes actions that can be done
/// with the message right now
@immutable
class MessageProperties extends TdObject {
  const MessageProperties({
    required this.canBeCopiedToSecretChat,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canBeEdited,
    required this.canBeForwarded,
    required this.canBePaid,
    required this.canBePinned,
    required this.canBeReplied,
    required this.canBeRepliedInAnotherChat,
    required this.canBeSaved,
    required this.canBeSharedInStory,
    required this.canEditMedia,
    required this.canEditSchedulingState,
    required this.canGetEmbeddingCode,
    required this.canGetLink,
    required this.canGetMediaTimestampLinks,
    required this.canGetMessageThread,
    required this.canGetReadDate,
    required this.canGetStatistics,
    required this.canGetViewers,
    required this.canRecognizeSpeech,
    required this.canReportChat,
    required this.canReportReactions,
    required this.canReportSupergroupSpam,
    required this.canSetFactCheck,
    required this.needShowStatistics,
  });

  /// [canBeCopiedToSecretChat] True, if content of the message can be copied to
  /// a secret chat using inputMessageForwarded or forwardMessages with copy
  /// options
  final bool canBeCopiedToSecretChat;

  /// [canBeDeletedOnlyForSelf] True, if the message can be deleted only for the
  /// current user while other users will continue to see it using the method
  /// deleteMessages with revoke == false
  final bool canBeDeletedOnlyForSelf;

  /// [canBeDeletedForAllUsers] True, if the message can be deleted for all
  /// users using the method deleteMessages with revoke == true
  final bool canBeDeletedForAllUsers;

  /// [canBeEdited] True, if the message can be edited using the methods
  /// editMessageText, editMessageCaption, or editMessageReplyMarkup. For live
  /// location and poll messages this fields shows whether
  /// editMessageLiveLocation or stopPoll can be used with this message
  final bool canBeEdited;

  /// [canBeForwarded] True, if the message can be forwarded using
  /// inputMessageForwarded or forwardMessages
  final bool canBeForwarded;

  /// [canBePaid] True, if the message can be paid using inputInvoiceMessage
  final bool canBePaid;

  /// [canBePinned] True, if the message can be pinned or unpinned in the chat
  /// using pinChatMessage or unpinChatMessage
  final bool canBePinned;

  /// [canBeReplied] True, if the message can be replied in the same chat and
  /// forum topic using inputMessageReplyToMessage
  final bool canBeReplied;

  /// [canBeRepliedInAnotherChat] True, if the message can be replied in another
  /// chat or forum topic using inputMessageReplyToExternalMessage
  final bool canBeRepliedInAnotherChat;

  /// [canBeSaved] True, if content of the message can be saved locally or
  /// copied using inputMessageForwarded or forwardMessages with copy options
  final bool canBeSaved;

  /// [canBeSharedInStory] True, if the message can be shared in a story using
  /// inputStoryAreaTypeMessage
  final bool canBeSharedInStory;

  /// [canEditMedia] True, if the message can be edited using the method
  /// editMessageMedia
  final bool canEditMedia;

  /// [canEditSchedulingState] True, if scheduling state of the message can be
  /// edited
  final bool canEditSchedulingState;

  /// [canGetEmbeddingCode] True, if code for message embedding can be received
  /// using getMessageEmbeddingCode
  final bool canGetEmbeddingCode;

  /// [canGetLink] True, if a link can be generated for the message using
  /// getMessageLink
  final bool canGetLink;

  /// [canGetMediaTimestampLinks] True, if media timestamp links can be
  /// generated for media timestamp entities in the message text, caption or
  /// link preview description using getMessageLink
  final bool canGetMediaTimestampLinks;

  /// [canGetMessageThread] True, if information about the message thread is
  /// available through getMessageThread and getMessageThreadHistory
  final bool canGetMessageThread;

  /// [canGetReadDate] True, if read date of the message can be received through
  /// getMessageReadDate
  final bool canGetReadDate;

  /// [canGetStatistics] True, if message statistics are available through
  /// getMessageStatistics and message forwards can be received using
  /// getMessagePublicForwards
  final bool canGetStatistics;

  /// [canGetViewers] True, if chat members already viewed the message can be
  /// received through getMessageViewers
  final bool canGetViewers;

  /// [canRecognizeSpeech] True, if speech can be recognized for the message
  /// through recognizeSpeech
  final bool canRecognizeSpeech;

  /// [canReportChat] True, if the message can be reported using reportChat
  final bool canReportChat;

  /// [canReportReactions] True, if reactions on the message can be reported
  /// through reportMessageReactions
  final bool canReportReactions;

  /// [canReportSupergroupSpam] True, if the message can be reported using
  /// reportSupergroupSpam
  final bool canReportSupergroupSpam;

  /// [canSetFactCheck] True, if fact check for the message can be changed
  /// through setMessageFactCheck
  final bool canSetFactCheck;

  /// [needShowStatistics] True, if message statistics must be available from
  /// context menu of the message
  final bool needShowStatistics;

  static const String constructor = 'messageProperties';

  static MessageProperties? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageProperties(
      canBeCopiedToSecretChat: json['can_be_copied_to_secret_chat'] as bool,
      canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'] as bool,
      canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'] as bool,
      canBeEdited: json['can_be_edited'] as bool,
      canBeForwarded: json['can_be_forwarded'] as bool,
      canBePaid: json['can_be_paid'] as bool,
      canBePinned: json['can_be_pinned'] as bool,
      canBeReplied: json['can_be_replied'] as bool,
      canBeRepliedInAnotherChat: json['can_be_replied_in_another_chat'] as bool,
      canBeSaved: json['can_be_saved'] as bool,
      canBeSharedInStory: json['can_be_shared_in_story'] as bool,
      canEditMedia: json['can_edit_media'] as bool,
      canEditSchedulingState: json['can_edit_scheduling_state'] as bool,
      canGetEmbeddingCode: json['can_get_embedding_code'] as bool,
      canGetLink: json['can_get_link'] as bool,
      canGetMediaTimestampLinks: json['can_get_media_timestamp_links'] as bool,
      canGetMessageThread: json['can_get_message_thread'] as bool,
      canGetReadDate: json['can_get_read_date'] as bool,
      canGetStatistics: json['can_get_statistics'] as bool,
      canGetViewers: json['can_get_viewers'] as bool,
      canRecognizeSpeech: json['can_recognize_speech'] as bool,
      canReportChat: json['can_report_chat'] as bool,
      canReportReactions: json['can_report_reactions'] as bool,
      canReportSupergroupSpam: json['can_report_supergroup_spam'] as bool,
      canSetFactCheck: json['can_set_fact_check'] as bool,
      needShowStatistics: json['need_show_statistics'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_be_copied_to_secret_chat': canBeCopiedToSecretChat,
        'can_be_deleted_only_for_self': canBeDeletedOnlyForSelf,
        'can_be_deleted_for_all_users': canBeDeletedForAllUsers,
        'can_be_edited': canBeEdited,
        'can_be_forwarded': canBeForwarded,
        'can_be_paid': canBePaid,
        'can_be_pinned': canBePinned,
        'can_be_replied': canBeReplied,
        'can_be_replied_in_another_chat': canBeRepliedInAnotherChat,
        'can_be_saved': canBeSaved,
        'can_be_shared_in_story': canBeSharedInStory,
        'can_edit_media': canEditMedia,
        'can_edit_scheduling_state': canEditSchedulingState,
        'can_get_embedding_code': canGetEmbeddingCode,
        'can_get_link': canGetLink,
        'can_get_media_timestamp_links': canGetMediaTimestampLinks,
        'can_get_message_thread': canGetMessageThread,
        'can_get_read_date': canGetReadDate,
        'can_get_statistics': canGetStatistics,
        'can_get_viewers': canGetViewers,
        'can_recognize_speech': canRecognizeSpeech,
        'can_report_chat': canReportChat,
        'can_report_reactions': canReportReactions,
        'can_report_supergroup_spam': canReportSupergroupSpam,
        'can_set_fact_check': canSetFactCheck,
        'need_show_statistics': needShowStatistics,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
