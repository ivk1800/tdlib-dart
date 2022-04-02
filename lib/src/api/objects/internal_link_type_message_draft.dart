import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The link contains a message draft text. A share screen needs to be shown
/// to the user, then the chosen chat must be opened and the text is added to
/// the input field
class InternalLinkTypeMessageDraft extends InternalLinkType {
  InternalLinkTypeMessageDraft(
      {required this.text, required this.containsLink});

  /// [text] Message draft text
  final FormattedText text;

  /// [containsLink] True, if the first line of the text contains a link. If
  /// true, the input field needs to be focused and the text after the link must
  /// be selected
  final bool containsLink;

  static const String CONSTRUCTOR = 'internalLinkTypeMessageDraft';

  static InternalLinkTypeMessageDraft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeMessageDraft(
        text: FormattedText.fromJson(json['text'])!,
        containsLink: json['contains_link']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text.toJson(),
        'contains_link': this.containsLink,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
