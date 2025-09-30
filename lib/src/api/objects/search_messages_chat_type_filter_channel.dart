import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only messages in channel chats
@immutable
class SearchMessagesChatTypeFilterChannel extends SearchMessagesChatTypeFilter {
  const SearchMessagesChatTypeFilterChannel();

  static const String constructor = 'searchMessagesChatTypeFilterChannel';

  static SearchMessagesChatTypeFilterChannel? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesChatTypeFilterChannel();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
