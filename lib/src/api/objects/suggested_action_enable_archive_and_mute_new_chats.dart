import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Suggests the user to enable
/// "archive_and_mute_new_chats_from_unknown_users" option
@immutable
class SuggestedActionEnableArchiveAndMuteNewChats extends SuggestedAction {
  const SuggestedActionEnableArchiveAndMuteNewChats();

  static const String constructor =
      'suggestedActionEnableArchiveAndMuteNewChats';

  static SuggestedActionEnableArchiveAndMuteNewChats? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionEnableArchiveAndMuteNewChats();
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
