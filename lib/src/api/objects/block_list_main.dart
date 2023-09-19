import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The main block list that disallows writing messages to the current user,
/// receiving their status and photo, viewing of stories, and some other
/// actions
@immutable
class BlockListMain extends BlockList {
  const BlockListMain();

  static const String constructor = 'blockListMain';

  static BlockListMain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BlockListMain();
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
