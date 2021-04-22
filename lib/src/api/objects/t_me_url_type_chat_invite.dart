import '../tdapi.dart';

/// A chat invite link
class TMeUrlTypeChatInvite extends TMeUrlType {
  TMeUrlTypeChatInvite({required this.info});

  /// [info] Chat invite link info
  final ChatInviteLinkInfo info;

  static const String CONSTRUCTOR = 'tMeUrlTypeChatInvite';

  static TMeUrlTypeChatInvite? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrlTypeChatInvite(
        info: ChatInviteLinkInfo.fromJson(json['info'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'info': this.info.toJson(), '@type': CONSTRUCTOR};
}
