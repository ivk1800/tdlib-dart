import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The subtitle of a page
@immutable
class PageBlockSubtitle extends PageBlock {
  const PageBlockSubtitle({
    required this.subtitle,
  });

  /// [subtitle] Subtitle
  final RichText subtitle;

  static const String constructor = 'pageBlockSubtitle';

  static PageBlockSubtitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockSubtitle(
      subtitle: RichText.fromJson(json['subtitle'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'subtitle': subtitle.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
