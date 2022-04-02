import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains a list of message positions
class MessagePositions extends TdObject {
  MessagePositions({required this.totalCount, required this.positions});

  /// [totalCount] Total count of messages found
  final int totalCount;

  /// [positions] List of message positions
  final List<MessagePosition> positions;

  static const String CONSTRUCTOR = 'messagePositions';

  static MessagePositions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePositions(
        totalCount: json['total_count'],
        positions: List<MessagePosition>.from((json['positions'] ?? [])
            .map((item) => MessagePosition.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'positions': positions.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
