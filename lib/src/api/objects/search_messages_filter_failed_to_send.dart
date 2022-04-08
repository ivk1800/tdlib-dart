import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only failed to send messages. This filter can be used only if the
/// message database is used
@immutable
class SearchMessagesFilterFailedToSend extends SearchMessagesFilter {
  const SearchMessagesFilterFailedToSend();

  static const String constructor = 'searchMessagesFilterFailedToSend';

  static SearchMessagesFilterFailedToSend? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterFailedToSend();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
