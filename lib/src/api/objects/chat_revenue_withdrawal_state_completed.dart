import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Withdrawal was completed
@immutable
class ChatRevenueWithdrawalStateCompleted extends ChatRevenueWithdrawalState {
  const ChatRevenueWithdrawalStateCompleted({
    required this.date,
    required this.url,
  });

  /// [date] Point in time (Unix timestamp) when the withdrawal was completed
  final int date;

  /// [url] The URL where the withdrawal transaction can be viewed
  final String url;

  static const String constructor = 'chatRevenueWithdrawalStateCompleted';

  static ChatRevenueWithdrawalStateCompleted? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueWithdrawalStateCompleted(
      date: json['date'] as int,
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'date': date,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
