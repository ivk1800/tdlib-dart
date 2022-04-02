import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A document message (a general file)
class PushMessageContentDocument extends PushMessageContent {
  PushMessageContentDocument({this.document, required this.isPinned});

  /// [document] Message content; may be null
  final Document? document;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentDocument';

  static PushMessageContentDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentDocument(
        document: Document.fromJson(json['document']),
        isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'document': this.document?.toJson(),
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
