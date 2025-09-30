import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a filter for type of the chats in which to search messages
@immutable
abstract class SearchMessagesChatTypeFilter extends TdObject {
  const SearchMessagesChatTypeFilter();

  static const String constructor = 'searchMessagesChatTypeFilter';

  /// Inherited by:
  /// [SearchMessagesChatTypeFilterChannel]
  /// [SearchMessagesChatTypeFilterGroup]
  /// [SearchMessagesChatTypeFilterPrivate]
  static SearchMessagesChatTypeFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SearchMessagesChatTypeFilterChannel.constructor:
        return SearchMessagesChatTypeFilterChannel.fromJson(json);
      case SearchMessagesChatTypeFilterGroup.constructor:
        return SearchMessagesChatTypeFilterGroup.fromJson(json);
      case SearchMessagesChatTypeFilterPrivate.constructor:
        return SearchMessagesChatTypeFilterPrivate.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
