import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of message viewers
@immutable
class MessageViewers extends TdObject {
  const MessageViewers({
    required this.viewers,
  });

  /// [viewers] List of message viewers
  final List<MessageViewer> viewers;

  static const String constructor = 'messageViewers';

  static MessageViewers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageViewers(
      viewers: List<MessageViewer>.from((json['viewers'] ?? [])
          .map((item) => MessageViewer.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'viewers': viewers.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
