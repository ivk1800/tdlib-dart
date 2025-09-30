import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only messages in basic group and supergroup chats
@immutable
class SearchMessagesChatTypeFilterGroup extends SearchMessagesChatTypeFilter {
  const SearchMessagesChatTypeFilterGroup();

  static const String constructor = 'searchMessagesChatTypeFilterGroup';

  static SearchMessagesChatTypeFilterGroup? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesChatTypeFilterGroup();
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
