import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains basic information about a chat filter
@immutable
class ChatFilterInfo extends TdObject {
  const ChatFilterInfo({
    required this.id,
    required this.title,
    required this.iconName,
  });

  /// [id] Unique chat filter identifier
  final int id;

  /// [title] The title of the filter; 1-12 characters without line feeds
  final String title;

  /// [iconName] The chosen or default icon name for short filter
  /// representation. One of "All", "Unread", "Unmuted", "Bots", "Channels",
  /// "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite",
  /// "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study",
  /// "Trade", "Travel", "Work", "Airplane", "Book", "Light", "Like", "Money",
  /// "Note", "Palette"
  final String iconName;

  static const String constructor = 'chatFilterInfo';

  static ChatFilterInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFilterInfo(
      id: json['id'],
      title: json['title'],
      iconName: json['icon_name'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'title': title,
        'icon_name': iconName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
