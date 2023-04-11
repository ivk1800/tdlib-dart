import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about one website the current user is logged in with
/// Telegram
@immutable
class ConnectedWebsite extends TdObject {
  const ConnectedWebsite({
    required this.id,
    required this.domainName,
    required this.botUserId,
    required this.browser,
    required this.platform,
    required this.logInDate,
    required this.lastActiveDate,
    required this.ip,
    required this.location,
  });

  /// [id] Website identifier
  final int id;

  /// [domainName] The domain name of the website
  final String domainName;

  /// [botUserId] User identifier of a bot linked with the website
  final int botUserId;

  /// [browser] The version of a browser used to log in
  final String browser;

  /// [platform] Operating system the browser is running on
  final String platform;

  /// [logInDate] Point in time (Unix timestamp) when the user was logged in
  final int logInDate;

  /// [lastActiveDate] Point in time (Unix timestamp) when obtained
  /// authorization was last used
  final int lastActiveDate;

  /// [ip] IP address from which the user was logged in, in human-readable
  /// format
  final String ip;

  /// [location] Human-readable description of a country and a region from which
  /// the user was logged in, based on the IP address
  final String location;

  static const String constructor = 'connectedWebsite';

  static ConnectedWebsite? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConnectedWebsite(
      id: int.tryParse(json['id']) ?? 0,
      domainName: json['domain_name'] as String,
      botUserId: json['bot_user_id'] as int,
      browser: json['browser'] as String,
      platform: json['platform'] as String,
      logInDate: json['log_in_date'] as int,
      lastActiveDate: json['last_active_date'] as int,
      ip: json['ip'] as String,
      location: json['location'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'domain_name': domainName,
        'bot_user_id': botUserId,
        'browser': browser,
        'platform': platform,
        'log_in_date': logInDate,
        'last_active_date': lastActiveDate,
        'ip': ip,
        'location': location,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
