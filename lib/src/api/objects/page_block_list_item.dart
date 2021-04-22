import '../tdapi.dart';

/// Describes an item of a list page block
class PageBlockListItem extends TdObject {
  PageBlockListItem({required this.label, required this.pageBlocks});

  /// [label] Item label
  final String label;

  /// [pageBlocks] Item blocks
  final List<PageBlock> pageBlocks;

  static const String CONSTRUCTOR = 'pageBlockListItem';

  static PageBlockListItem? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockListItem(
        label: json['label'],
        pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? [])
            .map((item) => PageBlock.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'label': this.label,
        'page_blocks': pageBlocks.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
