import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns state of Telegram Premium subscription and promotion videos for
/// Premium features
/// Returns [PremiumState]
@immutable
class GetPremiumState extends TdFunction {
  const GetPremiumState();

  static const String constructor = 'getPremiumState';

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
