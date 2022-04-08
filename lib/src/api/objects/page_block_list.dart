import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A list of data blocks
@immutable
class PageBlockList extends PageBlock {
  const PageBlockList({
    required this.items,
  });

  /// [items] The items of the list
  final List<PageBlockListItem> items;

  static const String constructor = 'pageBlockList';

  static PageBlockList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockList(
      items: List<PageBlockListItem>.from((json['items'] ?? [])
          .map((item) => PageBlockListItem.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'items': items.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
