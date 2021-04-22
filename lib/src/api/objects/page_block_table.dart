import '../tdapi.dart';

/// A table
class PageBlockTable extends PageBlock {
  PageBlockTable(
      {required this.caption,
      required this.cells,
      required this.isBordered,
      required this.isStriped});

  /// [caption] Table caption
  final RichText caption;

  /// [cells] Table cells
  final List<List<PageBlockTableCell>> cells;

  /// [isBordered] True, if the table is bordered
  final bool isBordered;

  /// [isStriped] True, if the table is striped
  final bool isStriped;

  static const String CONSTRUCTOR = 'pageBlockTable';

  static PageBlockTable? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockTable(
        caption: RichText.fromJson(json['caption'])!,
        cells: List<List<PageBlockTableCell>>.from((json['cells'] ?? [])
            .map((item) => List<PageBlockTableCell>.from(
                (json['List<PageBlockTableCell>'] ?? [])
                    .map((item) => PageBlockTableCell.fromJson(item))
                    .toList()))
            .toList()),
        isBordered: json['is_bordered'],
        isStriped: json['is_striped']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'caption': this.caption.toJson(),
        'cells': cells
            .map((item) => item.map((item) => item.toJson()).toList())
            .toList(),
        'is_bordered': this.isBordered,
        'is_striped': this.isStriped,
        '@type': CONSTRUCTOR
      };
}
