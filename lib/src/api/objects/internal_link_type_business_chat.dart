import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a business chat. Use getBusinessChatLinkInfo with
/// the provided link name to get information about the link, then open
/// received private chat and replace chat draft with the provided text
@immutable
class InternalLinkTypeBusinessChat extends InternalLinkType {
  const InternalLinkTypeBusinessChat({
    required this.linkName,
  });

  /// [linkName] Name of the link
  final String linkName;

  static const String constructor = 'internalLinkTypeBusinessChat';

  static InternalLinkTypeBusinessChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBusinessChat(
      linkName: json['link_name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link_name': linkName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
