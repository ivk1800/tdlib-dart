import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about the current localization target. This is an
/// offline request if only_local is true. Can be called before authorization
/// Returns [LocalizationTargetInfo]
@immutable
class GetLocalizationTargetInfo extends TdFunction {
  const GetLocalizationTargetInfo({
    required this.onlyLocal,
  });

  /// [onlyLocal] Pass true to get only locally available information without
  /// sending network requests
  final bool onlyLocal;

  static const String constructor = 'getLocalizationTargetInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'only_local': onlyLocal,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
