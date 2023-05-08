import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents an icon for a chat folder
@immutable
class ChatFolderIcon extends TdObject {
  const ChatFolderIcon({
    required this.name,
  });

  /// [name] The chosen icon name for short folder representation; one of "All",
  /// "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom",
  /// "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love",
  /// "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work", "Airplane",
  /// "Book", "Light", "Like", "Money", "Note", "Palette"
  final String name;

  static const String constructor = 'chatFolderIcon';

  static ChatFolderIcon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFolderIcon(
      name: json['name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
