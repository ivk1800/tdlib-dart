import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches a chat with an affiliate program. Returns the chat if found and
/// the program is active
/// Returns [Chat]
@immutable
class SearchChatAffiliateProgram extends TdFunction {
  const SearchChatAffiliateProgram({
    required this.username,
    required this.referrer,
  });

  /// [username] Username of the chat
  final String username;

  /// [referrer] The referrer from an internalLinkTypeChatAffiliateProgram link
  final String referrer;

  static const String constructor = 'searchChatAffiliateProgram';

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
