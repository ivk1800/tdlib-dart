import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A header
@immutable
class PageBlockHeader extends PageBlock {
  const PageBlockHeader({
    required this.header,
  });

  /// [header] Header
  final RichText header;

  static const String constructor = 'pageBlockHeader';

  static PageBlockHeader? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockHeader(
      header: RichText.fromJson(json['header'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'header': header.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
