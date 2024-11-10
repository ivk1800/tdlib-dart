import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of options for buying Telegram Stars
@immutable
class StarPaymentOptions extends TdObject {
  const StarPaymentOptions({
    required this.options,
  });

  /// [options] The list of options
  final List<StarPaymentOption> options;

  static const String constructor = 'starPaymentOptions';

  static StarPaymentOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarPaymentOptions(
      options: List<StarPaymentOption>.from(
          ((json['options'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => StarPaymentOption.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'options': options.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
