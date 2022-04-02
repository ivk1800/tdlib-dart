import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns an instant view version of a web page if available. Returns a 404
/// error if the web page has no instant view page
/// Returns [WebPageInstantView]
class GetWebPageInstantView extends TdFunction {
  GetWebPageInstantView({required this.url, required this.forceFull});

  /// [url] The web page URL
  final String url;

  /// [forceFull] If true, the full instant view for the web page will be
  /// returned
  final bool forceFull;

  static const String CONSTRUCTOR = 'getWebPageInstantView';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'url': this.url, 'force_full': this.forceFull, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
