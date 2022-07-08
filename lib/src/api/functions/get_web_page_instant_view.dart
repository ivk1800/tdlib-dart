import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an instant view version of a web page if available. Returns a 404
/// error if the web page has no instant view page
/// Returns [WebPageInstantView]
@immutable
class GetWebPageInstantView extends TdFunction {
  const GetWebPageInstantView({
    required this.url,
    required this.forceFull,
  });

  /// [url] The web page URL
  final String url;

  /// [forceFull] Pass true to get full instant view for the web page
  final bool forceFull;

  static const String constructor = 'getWebPageInstantView';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'force_full': forceFull,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
