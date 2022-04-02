import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about one website the current user is logged in with
/// Telegram
class ConnectedWebsite extends TdObject {
  ConnectedWebsite(
      {required this.id,
      required this.domainName,
      required this.botUserId,
      required this.browser,
      required this.platform,
      required this.logInDate,
      required this.lastActiveDate,
      required this.ip,
      required this.location});

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

  /// [location] Human-readable description of a country and a region, from
  /// which the user was logged in, based on the IP address
  final String location;

  static const String CONSTRUCTOR = 'connectedWebsite';

  static ConnectedWebsite? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConnectedWebsite(
        id: int.tryParse(json['id']) ?? 0,
        domainName: json['domain_name'],
        botUserId: json['bot_user_id'],
        browser: json['browser'],
        platform: json['platform'],
        logInDate: json['log_in_date'],
        lastActiveDate: json['last_active_date'],
        ip: json['ip'],
        location: json['location']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'domain_name': this.domainName,
        'bot_user_id': this.botUserId,
        'browser': this.browser,
        'platform': this.platform,
        'log_in_date': this.logInDate,
        'last_active_date': this.lastActiveDate,
        'ip': this.ip,
        'location': this.location,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
