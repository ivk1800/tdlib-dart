import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about the type of an internal link. Returns a 404
/// error if the link is not internal. Can be called before authorization
/// Returns [InternalLinkType]
@immutable
class GetInternalLinkType extends TdFunction {
  const GetInternalLinkType({
    required this.link,
  });

  /// [link] The link
  final String link;

  static const String constructor = 'getInternalLinkType';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
