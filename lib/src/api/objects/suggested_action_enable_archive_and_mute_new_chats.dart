import '../tdapi.dart';

/// Suggests the user to enable
/// "archive_and_mute_new_chats_from_unknown_users" option
class SuggestedActionEnableArchiveAndMuteNewChats extends SuggestedAction {
  const SuggestedActionEnableArchiveAndMuteNewChats();

  static const String CONSTRUCTOR =
      'suggestedActionEnableArchiveAndMuteNewChats';

  static SuggestedActionEnableArchiveAndMuteNewChats? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionEnableArchiveAndMuteNewChats();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
