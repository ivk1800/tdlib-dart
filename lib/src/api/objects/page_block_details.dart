import '../tdapi.dart';

/// A collapsible block
class PageBlockDetails extends PageBlock {
  PageBlockDetails(
      {required this.header, required this.pageBlocks, required this.isOpen});

  /// [header] Always visible heading for the block
  final RichText header;

  /// [pageBlocks] Block contents
  final List<PageBlock> pageBlocks;

  /// [isOpen] True, if the block is open by default
  final bool isOpen;

  static const String CONSTRUCTOR = 'pageBlockDetails';

  static PageBlockDetails? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockDetails(
        header: RichText.fromJson(json['header'])!,
        pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? [])
            .map((item) => PageBlock.fromJson(item))
            .toList()),
        isOpen: json['is_open']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'header': this.header.toJson(),
        'page_blocks': pageBlocks.map((item) => item.toJson()).toList(),
        'is_open': this.isOpen,
        '@type': CONSTRUCTOR
      };
}
