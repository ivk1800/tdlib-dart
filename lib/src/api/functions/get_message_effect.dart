import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a message effect. Returns a 404 error if the
/// effect is not found
/// Returns [MessageEffect]
@immutable
class GetMessageEffect extends TdFunction {
  const GetMessageEffect({
    required this.effectId,
  });

  /// [effectId] Unique identifier of the effect
  final int effectId;

  static const String constructor = 'getMessageEffect';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'effect_id': effectId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
