import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of gifts that can be sent to another user
@immutable
class Gifts extends TdObject {
  const Gifts({
    required this.gifts,
  });

  /// [gifts] The list of gifts
  final List<Gift> gifts;

  static const String constructor = 'gifts';

  static Gifts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Gifts(
      gifts: List<Gift>.from(((json['gifts'] as List<dynamic>?) ?? <dynamic>[])
          .map((item) => Gift.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gifts': gifts.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
