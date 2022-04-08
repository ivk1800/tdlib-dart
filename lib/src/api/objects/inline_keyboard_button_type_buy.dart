import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A button to buy something. This button must be in the first column and row
/// of the keyboard and can be attached only to a message with content of the
/// type messageInvoice
@immutable
class InlineKeyboardButtonTypeBuy extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeBuy();

  static const String constructor = 'inlineKeyboardButtonTypeBuy';

  static InlineKeyboardButtonTypeBuy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InlineKeyboardButtonTypeBuy();
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
