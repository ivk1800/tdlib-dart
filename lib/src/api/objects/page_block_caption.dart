import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a caption of another block
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
