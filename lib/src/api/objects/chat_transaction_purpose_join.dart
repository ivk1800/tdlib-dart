import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// User joined the channel and subscribed to regular payments in Telegram
/// Stars
@immutable
class ChatTransactionPurposeJoin extends ChatTransactionPurpose {
  const ChatTransactionPurposeJoin({
    required this.period,
  });

  /// [period] The number of seconds between consecutive Telegram Star debiting
  final int period;

  static const String constructor = 'chatTransactionPurposeJoin';

  static ChatTransactionPurposeJoin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTransactionPurposeJoin(
      period: json['period'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'period': period,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
