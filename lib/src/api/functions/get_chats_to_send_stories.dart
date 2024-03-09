import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns supergroup and channel chats in which the current user has the
/// right to post stories. The chats must be rechecked with canSendStory
/// before actually trying to post a story there
/// Returns [Chats]
@immutable
class GetChatsToSendStories extends TdFunction {
  const GetChatsToSendStories();

  static const String constructor = 'getChatsToSendStories';

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
