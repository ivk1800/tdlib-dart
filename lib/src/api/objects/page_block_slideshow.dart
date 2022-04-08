import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A slideshow
@immutable
class PageBlockSlideshow extends PageBlock {
  const PageBlockSlideshow({
    required this.pageBlocks,
    required this.caption,
  });

  /// [pageBlocks] Slideshow item contents
  final List<PageBlock> pageBlocks;

  /// [caption] Block caption
  final PageBlockCaption caption;

  static const String constructor = 'pageBlockSlideshow';

  static PageBlockSlideshow? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockSlideshow(
      pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? [])
          .map((item) => PageBlock.fromJson(item))
          .toList()),
      caption: PageBlockCaption.fromJson(json['caption'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'page_blocks': pageBlocks.map((item) => item.toJson()).toList(),
        'caption': caption.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
