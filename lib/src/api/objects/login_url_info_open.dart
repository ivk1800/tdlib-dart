import '../tdapi.dart';

/// An HTTP url needs to be open
class LoginUrlInfoOpen extends LoginUrlInfo {
  LoginUrlInfoOpen({required this.url, required this.skipConfirm});

  /// [url] The URL to open
  final String url;

  /// [skipConfirm] True, if there is no need to show an ordinary open URL
  /// confirm
  final bool skipConfirm;

  static const String CONSTRUCTOR = 'loginUrlInfoOpen';

  static LoginUrlInfoOpen? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LoginUrlInfoOpen(
        url: json['url'], skipConfirm: json['skip_confirm']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'url': this.url, 'skip_confirm': this.skipConfirm, '@type': CONSTRUCTOR};
}
