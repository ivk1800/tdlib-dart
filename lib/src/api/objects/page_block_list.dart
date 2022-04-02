import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A list of data blocks
class PageBlockList extends PageBlock {
  PageBlockList({required this.items});

  /// [items] The items of the list
  final List<PageBlockListItem> items;

  static const String CONSTRUCTOR = 'pageBlockList';

  static PageBlockList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockList(
        items: List<PageBlockListItem>.from((json['items'] ?? [])
            .map((item) => PageBlockListItem.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'items': items.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
