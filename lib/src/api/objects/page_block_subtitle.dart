import '../tdapi.dart';

/// The subtitle of a page
class PageBlockSubtitle extends PageBlock {
  PageBlockSubtitle({required this.subtitle});

  /// [subtitle] Subtitle
  final RichText subtitle;

  static const String CONSTRUCTOR = 'pageBlockSubtitle';

  static PageBlockSubtitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockSubtitle(subtitle: RichText.fromJson(json['subtitle'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'subtitle': this.subtitle.toJson(), '@type': CONSTRUCTOR};
}
