import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A subheader
@immutable
class PageBlockSubheader extends PageBlock {
  const PageBlockSubheader({
    required this.subheader,
  });

  /// [subheader] Subheader
  final RichText subheader;

  static const String constructor = 'pageBlockSubheader';

  static PageBlockSubheader? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockSubheader(
      subheader: RichText.fromJson(json['subheader'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'subheader': subheader.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
