import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A slideshow
class PageBlockSlideshow extends PageBlock {
  PageBlockSlideshow({required this.pageBlocks, required this.caption});

  /// [pageBlocks] Slideshow item contents
  final List<PageBlock> pageBlocks;

  /// [caption] Block caption
  final PageBlockCaption caption;

  static const String CONSTRUCTOR = 'pageBlockSlideshow';

  static PageBlockSlideshow? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockSlideshow(
        pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? [])
            .map((item) => PageBlock.fromJson(item))
            .toList()),
        caption: PageBlockCaption.fromJson(json['caption'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'page_blocks': pageBlocks.map((item) => item.toJson()).toList(),
        'caption': this.caption.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
