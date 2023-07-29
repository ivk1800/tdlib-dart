import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns approximate number of chats in a being created chat folder. Main
/// and archive chat lists must be fully preloaded for this function to work
/// correctly
/// Returns [Count]
@immutable
class GetChatFolderChatCount extends TdFunction {
  const GetChatFolderChatCount({
    required this.folder,
  });

  /// [folder] The new chat folder
  final ChatFolder folder;

  static const String constructor = 'getChatFolderChatCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'folder': folder.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
