import '../tdapi.dart';

/// A block quote
class PageBlockBlockQuote extends PageBlock {
  PageBlockBlockQuote({required this.text, required this.credit});

  /// [text] Quote text
  final RichText text;

  /// [credit] Quote credit
  final RichText credit;

  static const String CONSTRUCTOR = 'pageBlockBlockQuote';

  static PageBlockBlockQuote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockBlockQuote(
        text: RichText.fromJson(json['text'])!,
        credit: RichText.fromJson(json['credit'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text.toJson(),
        'credit': this.credit.toJson(),
        '@type': CONSTRUCTOR
      };
}
