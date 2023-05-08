import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns default icon name for a folder. Can be called synchronously
/// Returns [ChatFolderIcon]
@immutable
class GetChatFolderDefaultIconName extends TdFunction {
  const GetChatFolderDefaultIconName({
    required this.folder,
  });

  /// [folder] Chat folder
  final ChatFolder folder;

  static const String constructor = 'getChatFolderDefaultIconName';

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
