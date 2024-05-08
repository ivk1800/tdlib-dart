import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes earnings from sponsored messages in a chat in some time frame
@immutable
class ChatRevenueTransactionTypeEarnings extends ChatRevenueTransactionType {
  const ChatRevenueTransactionTypeEarnings({
    required this.startDate,
    required this.endDate,
  });

  /// [startDate] Point in time (Unix timestamp) when the earnings started
  final int startDate;

  /// [endDate] Point in time (Unix timestamp) when the earnings ended
  final int endDate;

  static const String constructor = 'chatRevenueTransactionTypeEarnings';

  static ChatRevenueTransactionTypeEarnings? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransactionTypeEarnings(
      startDate: json['start_date'] as int,
      endDate: json['end_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'start_date': startDate,
        'end_date': endDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
