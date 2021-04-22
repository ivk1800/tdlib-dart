import '../tdapi.dart';

/// Returns information about the current localization target. This is an
/// offline request if only_local is true. Can be called before authorization
/// Returns [LocalizationTargetInfo]
class GetLocalizationTargetInfo extends TdFunction {
  GetLocalizationTargetInfo({required this.onlyLocal});

  /// [onlyLocal] If true, returns only locally available information without
  /// sending network requests
  final bool onlyLocal;

  static const String CONSTRUCTOR = 'getLocalizationTargetInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'only_local': this.onlyLocal, '@type': CONSTRUCTOR};
}
