import '../tdapi.dart';

/// Contains a list of requests to join a chat
class ChatJoinRequests extends TdObject {
  ChatJoinRequests({required this.totalCount, required this.requests});

  /// [totalCount] Approximate total count of requests found
  final int totalCount;

  /// [requests] List of the requests
  final List<ChatJoinRequest> requests;

  static const String CONSTRUCTOR = 'chatJoinRequests';

  static ChatJoinRequests? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatJoinRequests(
        totalCount: json['total_count'],
        requests: List<ChatJoinRequest>.from((json['requests'] ?? [])
            .map((item) => ChatJoinRequest.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'requests': requests.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
