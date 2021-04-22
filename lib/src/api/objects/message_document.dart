import '../tdapi.dart';

/// A document message (general file)
class MessageDocument extends MessageContent {
  MessageDocument({required this.document, required this.caption});

  /// [document] The document description
  final Document document;

  /// [caption] Document caption
  final FormattedText caption;

  static const String CONSTRUCTOR = 'messageDocument';

  static MessageDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageDocument(
        document: Document.fromJson(json['document'])!,
        caption: FormattedText.fromJson(json['caption'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'document': this.document.toJson(),
        'caption': this.caption.toJson(),
        '@type': CONSTRUCTOR
      };
}
