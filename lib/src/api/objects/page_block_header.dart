import '../tdapi.dart';

/// A header
class PageBlockHeader extends PageBlock {
  PageBlockHeader({required this.header});

  /// [header] Header
  final RichText header;

  static const String CONSTRUCTOR = 'pageBlockHeader';

  static PageBlockHeader? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockHeader(header: RichText.fromJson(json['header'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'header': this.header.toJson(), '@type': CONSTRUCTOR};
}
