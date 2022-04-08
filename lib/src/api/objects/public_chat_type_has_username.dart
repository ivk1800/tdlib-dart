import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat is public, because it has username
@immutable
class PublicChatTypeHasUsername extends PublicChatType {
  const PublicChatTypeHasUsername();

  static const String constructor = 'publicChatTypeHasUsername';

  static PublicChatTypeHasUsername? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PublicChatTypeHasUsername();
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
