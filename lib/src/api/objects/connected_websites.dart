import '../tdapi.dart';

/// Contains a list of websites the current user is logged in with Telegram
class ConnectedWebsites extends TdObject {
  ConnectedWebsites({required this.websites});

  /// [websites] List of connected websites
  final List<ConnectedWebsite> websites;

  static const String CONSTRUCTOR = 'connectedWebsites';

  static ConnectedWebsites? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConnectedWebsites(
        websites: List<ConnectedWebsite>.from((json['websites'] ?? [])
            .map((item) => ConnectedWebsite.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'websites': websites.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
