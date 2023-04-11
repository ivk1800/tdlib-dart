import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link contains a message draft text. A share screen needs to be shown
/// to the user, then the chosen chat must be opened and the text is added to
/// the input field
@immutable
class InternalLinkTypeMessageDraft extends InternalLinkType {
  const InternalLinkTypeMessageDraft({
    required this.text,
    required this.containsLink,
  });

  /// [text] Message draft text
  final FormattedText text;

  /// [containsLink] True, if the first line of the text contains a link. If
  /// true, the input field needs to be focused and the text after the link must
  /// be selected
  final bool containsLink;

  static const String constructor = 'internalLinkTypeMessageDraft';

  static InternalLinkTypeMessageDraft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeMessageDraft(
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      containsLink: json['contains_link'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'contains_link': containsLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
