import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the location of a chat. Available only for some location-based
/// supergroups, use supergroupFullInfo.can_set_location to check whether the
/// method is allowed to use
/// Returns [Ok]
@immutable
class SetChatLocation extends TdFunction {
  const SetChatLocation({
    required this.chatId,
    required this.location,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [location] New location for the chat; must be valid and not null
  final ChatLocation location;

  static const String constructor = 'setChatLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'location': location.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
