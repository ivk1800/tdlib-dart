import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns list of participant identifiers, on whose behalf a video chat in
/// the chat can be joined
/// Returns [MessageSenders]
class GetVideoChatAvailableParticipants extends TdFunction {
  GetVideoChatAvailableParticipants({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'getVideoChatAvailableParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
