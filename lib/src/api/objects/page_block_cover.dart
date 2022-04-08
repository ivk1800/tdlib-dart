import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A page cover
@immutable
class PageBlockCover extends PageBlock {
  const PageBlockCover({
    required this.cover,
  });

  /// [cover] Cover
  final PageBlock cover;

  static const String constructor = 'pageBlockCover';

  static PageBlockCover? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockCover(
      cover: PageBlock.fromJson(json['cover'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'cover': cover.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
