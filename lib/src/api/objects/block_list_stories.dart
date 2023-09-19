import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The block list that disallows viewing of stories of the current user
@immutable
class BlockListStories extends BlockList {
  const BlockListStories();

  static const String constructor = 'blockListStories';

  static BlockListStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BlockListStories();
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
