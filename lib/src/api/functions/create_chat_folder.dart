import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates new chat folder. Returns information about the created chat
/// folder. There can be up to getOption("chat_folder_count_max") chat
/// folders, but the limit can be increased with Telegram Premium
/// Returns [ChatFolderInfo]
@immutable
class CreateChatFolder extends TdFunction {
  const CreateChatFolder({
    required this.folder,
  });

  /// [folder] The new chat folder
  final ChatFolder folder;

  static const String constructor = 'createChatFolder';

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
