import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of requests to join a chat
@immutable
class ChatJoinRequests extends TdObject {
  const ChatJoinRequests({
    required this.totalCount,
    required this.requests,
  });

  /// [totalCount] Approximate total number of requests found
  final int totalCount;

  /// [requests] List of the requests
  final List<ChatJoinRequest> requests;

  static const String constructor = 'chatJoinRequests';

  static ChatJoinRequests? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatJoinRequests(
      totalCount: json['total_count'] as int,
      requests: List<ChatJoinRequest>.from(
          ((json['requests'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatJoinRequest.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'requests': requests.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
