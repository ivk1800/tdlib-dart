import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A message with a user contact
class PushMessageContentContact extends PushMessageContent {
  PushMessageContentContact({required this.name, required this.isPinned});

  /// [name] Contact's name
  final String name;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentContact';

  static PushMessageContentContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentContact(
        name: json['name'], isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'name': this.name, 'is_pinned': this.isPinned, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
