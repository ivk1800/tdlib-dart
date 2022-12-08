import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user has too many chats with username, one of them must be made
/// private first
@immutable
class CheckChatUsernameResultPublicChatsTooMany
    extends CheckChatUsernameResult {
  const CheckChatUsernameResultPublicChatsTooMany();

  static const String constructor = 'checkChatUsernameResultPublicChatsTooMany';

  static CheckChatUsernameResultPublicChatsTooMany? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultPublicChatsTooMany();
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
