import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about the type of an internal link. Returns a 404
/// error if the link is not internal. Can be called before authorization
/// Returns [InternalLinkType]
class GetInternalLinkType extends TdFunction {
  GetInternalLinkType({required this.link});

  /// [link] The link
  final String link;

  static const String CONSTRUCTOR = 'getInternalLinkType';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'link': this.link, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
