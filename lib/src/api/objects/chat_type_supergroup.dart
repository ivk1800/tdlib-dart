import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A supergroup or channel (with unlimited members)
@immutable
class ChatTypeSupergroup extends ChatType {
  const ChatTypeSupergroup({
    required this.supergroupId,
    required this.isChannel,
  });

  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;

  /// [isChannel] True, if the supergroup is a channel
  final bool isChannel;

  static const String constructor = 'chatTypeSupergroup';

  static ChatTypeSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTypeSupergroup(
      supergroupId: json['supergroup_id'],
      isChannel: json['is_channel'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'is_channel': isChannel,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
