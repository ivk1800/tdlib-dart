import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The messages was exported from a private chat
class MessageFileTypePrivate extends MessageFileType {
  MessageFileTypePrivate({required this.name});

  /// [name] Name of the other party; may be empty if unrecognized
  final String name;

  static const String CONSTRUCTOR = 'messageFileTypePrivate';

  static MessageFileTypePrivate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageFileTypePrivate(name: json['name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'name': this.name, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
