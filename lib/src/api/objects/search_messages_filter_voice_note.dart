import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only voice note messages
@immutable
class SearchMessagesFilterVoiceNote extends SearchMessagesFilter {
  const SearchMessagesFilterVoiceNote();

  static const String constructor = 'searchMessagesFilterVoiceNote';

  static SearchMessagesFilterVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVoiceNote();
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
