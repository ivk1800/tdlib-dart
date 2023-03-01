import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An HTTP URL needs to be open
@immutable
class LoginUrlInfoOpen extends LoginUrlInfo {
  const LoginUrlInfoOpen({
    required this.url,
    required this.skipConfirm,
  });

  /// [url] The URL to open
  final String url;

  /// [skipConfirm] True, if there is no need to show an ordinary open URL
  /// confirm
  final bool skipConfirm;

  static const String constructor = 'loginUrlInfoOpen';

  static LoginUrlInfoOpen? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LoginUrlInfoOpen(
      url: json['url'],
      skipConfirm: json['skip_confirm'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'skip_confirm': skipConfirm,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
