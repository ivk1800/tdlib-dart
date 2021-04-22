import '../tdapi.dart';

/// Searches a public chat by its username. Currently only private chats,
/// supergroups and channels can be public. Returns the chat if found;
/// otherwise an error is returned
/// Returns [Chat]
class SearchPublicChat extends TdFunction {
  SearchPublicChat({required this.username});

  /// [username] Username to be resolved
  final String username;

  static const String CONSTRUCTOR = 'searchPublicChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'username': this.username, '@type': CONSTRUCTOR};
}
