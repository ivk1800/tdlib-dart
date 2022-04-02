import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the location of a chat. Available only for some location-based
/// supergroups, use supergroupFullInfo.can_set_location to check whether the
/// method is allowed to use
/// Returns [Ok]
class SetChatLocation extends TdFunction {
  SetChatLocation({required this.chatId, required this.location});

  /// [chatId] Chat identifier
  final int chatId;

  /// [location] New location for the chat; must be valid and not null
  final ChatLocation location;

  static const String CONSTRUCTOR = 'setChatLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'location': this.location.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
