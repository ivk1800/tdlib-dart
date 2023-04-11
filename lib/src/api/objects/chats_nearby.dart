import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of chats located nearby
@immutable
class ChatsNearby extends TdObject {
  const ChatsNearby({
    required this.usersNearby,
    required this.supergroupsNearby,
  });

  /// [usersNearby] List of users nearby
  final List<ChatNearby> usersNearby;

  /// [supergroupsNearby] List of location-based supergroups nearby
  final List<ChatNearby> supergroupsNearby;

  static const String constructor = 'chatsNearby';

  static ChatsNearby? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatsNearby(
      usersNearby: List<ChatNearby>.from(
          ((json['users_nearby'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatNearby.fromJson(item))
              .toList()),
      supergroupsNearby: List<ChatNearby>.from(
          ((json['supergroups_nearby'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatNearby.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'users_nearby': usersNearby.map((item) => item.toJson()).toList(),
        'supergroups_nearby':
            supergroupsNearby.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
