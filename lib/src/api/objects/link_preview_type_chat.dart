import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a chat
@immutable
class LinkPreviewTypeChat extends LinkPreviewType {
  const LinkPreviewTypeChat({
    required this.type,
    this.photo,
    required this.createsJoinRequest,
  });

  /// [type] Type of the chat
  final InviteLinkChatType type;

  /// [photo] Photo of the chat; may be null
  final ChatPhoto? photo;

  /// [createsJoinRequest] True, if the link only creates join request
  final bool createsJoinRequest;

  static const String constructor = 'linkPreviewTypeChat';

  static LinkPreviewTypeChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeChat(
      type: InviteLinkChatType.fromJson(json['type'] as Map<String, dynamic>?)!,
      photo: ChatPhoto.fromJson(json['photo'] as Map<String, dynamic>?),
      createsJoinRequest: json['creates_join_request'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'photo': photo?.toJson(),
        'creates_join_request': createsJoinRequest,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
