import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an item of a list page block
@immutable
class PageBlockListItem extends TdObject {
  const PageBlockListItem({
    required this.label,
    required this.pageBlocks,
  });

  /// [label] Item label
  final String label;

  /// [pageBlocks] Item blocks
  final List<PageBlock> pageBlocks;

  static const String constructor = 'pageBlockListItem';

  static PageBlockListItem? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockListItem(
      label: json['label'],
      pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? [])
          .map((item) => PageBlock.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'label': label,
        'page_blocks': pageBlocks.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
