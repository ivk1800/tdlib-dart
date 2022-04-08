import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a caption of an instant view web page block, consisting of a text
/// and a trailing credit
@immutable
class PageBlockCaption extends TdObject {
  const PageBlockCaption({
    required this.text,
    required this.credit,
  });

  /// [text] Content of the caption
  final RichText text;

  /// [credit] Block credit (like HTML tag <cite>)
  final RichText credit;

  static const String constructor = 'pageBlockCaption';

  static PageBlockCaption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockCaption(
      text: RichText.fromJson(json['text'])!,
      credit: RichText.fromJson(json['credit'])!,
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
