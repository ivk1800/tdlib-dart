import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The is_all_history_available setting of a supergroup was toggled
@immutable
class ChatEventIsAllHistoryAvailableToggled extends ChatEventAction {
  const ChatEventIsAllHistoryAvailableToggled({
    required this.isAllHistoryAvailable,
  });

  /// [isAllHistoryAvailable] New value of is_all_history_available
  final bool isAllHistoryAvailable;

  static const String constructor = 'chatEventIsAllHistoryAvailableToggled';

  static ChatEventIsAllHistoryAvailableToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventIsAllHistoryAvailableToggled(
      isAllHistoryAvailable: json['is_all_history_available'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_all_history_available': isAllHistoryAvailable,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
