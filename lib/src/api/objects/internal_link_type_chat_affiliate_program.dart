import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is an affiliate program link. Call searchChatAffiliateProgram
/// with the given username and referrer to process the link
@immutable
class InternalLinkTypeChatAffiliateProgram extends InternalLinkType {
  const InternalLinkTypeChatAffiliateProgram({
    required this.username,
    required this.referrer,
  });

  /// [username] Username to be passed to searchChatAffiliateProgram
  final String username;

  /// [referrer] Referrer to be passed to searchChatAffiliateProgram
  final String referrer;

  static const String constructor = 'internalLinkTypeChatAffiliateProgram';

  static InternalLinkTypeChatAffiliateProgram? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeChatAffiliateProgram(
      username: json['username'] as String,
      referrer: json['referrer'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'username': username,
    'referrer': referrer,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
