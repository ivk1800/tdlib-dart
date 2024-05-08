import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The revenue earned from sponsored messages in a chat has changed. If chat
/// revenue screen is opened, then getChatRevenueTransactions may be called to
/// fetch new transactions
@immutable
class UpdateChatRevenueAmount extends Update {
  const UpdateChatRevenueAmount();

  static const String constructor = 'updateChatRevenueAmount';

  static UpdateChatRevenueAmount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UpdateChatRevenueAmount();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
