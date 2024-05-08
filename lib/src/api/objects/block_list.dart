import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a type of block list
@immutable
abstract class BlockList extends TdObject {
  const BlockList();

  static const String constructor = 'blockList';

  /// Inherited by:
  /// [BlockListMain]
  /// [BlockListStories]
  static BlockList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BlockListMain.constructor:
        return BlockListMain.fromJson(json);
      case BlockListStories.constructor:
        return BlockListStories.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
