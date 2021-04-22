import '../tdapi.dart';

/// A subheader
class PageBlockSubheader extends PageBlock {
  PageBlockSubheader({required this.subheader});

  /// [subheader] Subheader
  final RichText subheader;

  static const String CONSTRUCTOR = 'pageBlockSubheader';

  static PageBlockSubheader? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockSubheader(subheader: RichText.fromJson(json['subheader'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'subheader': this.subheader.toJson(), '@type': CONSTRUCTOR};
}
