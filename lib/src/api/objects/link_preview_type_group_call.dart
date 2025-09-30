import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a group call that isn't bound to a chat
@immutable
class LinkPreviewTypeGroupCall extends LinkPreviewType {
  const LinkPreviewTypeGroupCall();

  static const String constructor = 'linkPreviewTypeGroupCall';

  static LinkPreviewTypeGroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LinkPreviewTypeGroupCall();
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
