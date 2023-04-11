import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A collage
@immutable
class PageBlockCollage extends PageBlock {
  const PageBlockCollage({
    required this.pageBlocks,
    required this.caption,
  });

  /// [pageBlocks] Collage item contents
  final List<PageBlock> pageBlocks;

  /// [caption] Block caption
  final PageBlockCaption caption;

  static const String constructor = 'pageBlockCollage';

  static PageBlockCollage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockCollage(
      pageBlocks: List<PageBlock>.from(
          ((json['page_blocks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PageBlock.fromJson(item))
              .toList()),
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?)!,
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
