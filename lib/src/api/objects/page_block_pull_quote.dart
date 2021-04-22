import '../tdapi.dart';

/// A pull quote
class PageBlockPullQuote extends PageBlock {
  PageBlockPullQuote({required this.text, required this.credit});

  /// [text] Quote text
  final RichText text;

  /// [credit] Quote credit
  final RichText credit;

  static const String CONSTRUCTOR = 'pageBlockPullQuote';

  static PageBlockPullQuote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockPullQuote(
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
