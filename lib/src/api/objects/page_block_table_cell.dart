import '../tdapi.dart';

/// Represents a cell of a table
class PageBlockTableCell extends TdObject {
  PageBlockTableCell(
      {this.text,
      required this.isHeader,
      required this.colspan,
      required this.rowspan,
      required this.align,
      required this.valign});

  /// [text] Cell text; may be null. If the text is null, then the cell should
  /// be invisible
  final RichText? text;

  /// [isHeader] True, if it is a header cell
  final bool isHeader;

  /// [colspan] The number of columns the cell should span
  final int colspan;

  /// [rowspan] The number of rows the cell should span
  final int rowspan;

  /// [align] Horizontal cell content alignment
  final PageBlockHorizontalAlignment align;

  /// [valign] Vertical cell content alignment
  final PageBlockVerticalAlignment valign;

  static const String CONSTRUCTOR = 'pageBlockTableCell';

  static PageBlockTableCell? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockTableCell(
        text: RichText.fromJson(json['text']),
        isHeader: json['is_header'],
        colspan: json['colspan'],
        rowspan: json['rowspan'],
        align: PageBlockHorizontalAlignment.fromJson(json['align'])!,
        valign: PageBlockVerticalAlignment.fromJson(json['valign'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text?.toJson(),
        'is_header': this.isHeader,
        'colspan': this.colspan,
        'rowspan': this.rowspan,
        'align': this.align.toJson(),
        'valign': this.valign.toJson(),
        '@type': CONSTRUCTOR
      };
}
