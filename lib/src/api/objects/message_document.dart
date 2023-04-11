import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A document message (general file)
@immutable
class MessageDocument extends MessageContent {
  const MessageDocument({
    required this.document,
    required this.caption,
  });

  /// [document] The document description
  final Document document;

  /// [caption] Document caption
  final FormattedText caption;

  static const String constructor = 'messageDocument';

  static MessageDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageDocument(
      document: Document.fromJson(json['document'] as Map<String, dynamic>?)!,
      caption:
          FormattedText.fromJson(json['caption'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'document': document.toJson(),
        'caption': caption.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
