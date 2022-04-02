import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The is_all_history_available setting of a supergroup was toggled
class ChatEventIsAllHistoryAvailableToggled extends ChatEventAction {
  ChatEventIsAllHistoryAvailableToggled({required this.isAllHistoryAvailable});

  /// [isAllHistoryAvailable] New value of is_all_history_available
  final bool isAllHistoryAvailable;

  static const String CONSTRUCTOR = 'chatEventIsAllHistoryAvailableToggled';

  static ChatEventIsAllHistoryAvailableToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventIsAllHistoryAvailableToggled(
        isAllHistoryAvailable: json['is_all_history_available']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_all_history_available': this.isAllHistoryAvailable,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
