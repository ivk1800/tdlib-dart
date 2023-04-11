import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A block quote
@immutable
class PageBlockBlockQuote extends PageBlock {
  const PageBlockBlockQuote({
    required this.text,
    required this.credit,
  });

  /// [text] Quote text
  final RichText text;

  /// [credit] Quote credit
  final RichText credit;

  static const String constructor = 'pageBlockBlockQuote';

  static PageBlockBlockQuote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockBlockQuote(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      credit: RichText.fromJson(json['credit'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'credit': credit.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
