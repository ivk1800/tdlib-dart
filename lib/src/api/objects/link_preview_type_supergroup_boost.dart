import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to boost a supergroup chat
@immutable
class LinkPreviewTypeSupergroupBoost extends LinkPreviewType {
  const LinkPreviewTypeSupergroupBoost({
    this.photo,
  });

  /// [photo] Photo of the chat; may be null
  final ChatPhoto? photo;

  static const String constructor = 'linkPreviewTypeSupergroupBoost';

  static LinkPreviewTypeSupergroupBoost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeSupergroupBoost(
      photo: ChatPhoto.fromJson(json['photo'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
