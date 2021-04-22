import '../tdapi.dart';

/// Returns only failed to send messages. This filter can be used only if the
/// message database is used
class SearchMessagesFilterFailedToSend extends SearchMessagesFilter {
  const SearchMessagesFilterFailedToSend();

  static const String CONSTRUCTOR = 'searchMessagesFilterFailedToSend';

  static SearchMessagesFilterFailedToSend? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterFailedToSend();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
