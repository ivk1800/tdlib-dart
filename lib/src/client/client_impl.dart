import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:tdlib/src/client/platform/platform.dart';
import 'package:tdlib/td_api.dart';

import 'client.dart';
import 'td_function_exception.dart';

class ClientImpl implements Client {
  Platform? _platform;
  int _extraCount = 0;
  final PublishSubject<TdObject> _updatesSubject = PublishSubject<TdObject>();

  final PublishSubject<Map<String, dynamic>> _rawResultsSubject =
      PublishSubject<Map<String, dynamic>>();

  ClientImpl({required Platform platform}) : _platform = platform;

  @override
  Stream<TdObject> get updates => _updatesSubject;

  @override
  Future<T> send<T extends TdObject>(TdFunction function) async {
    assert(_platform != null);

    final Map<String, dynamic> jsonAsMap = function.toJson();
    final dynamic extra = ++_extraCount;
    jsonAsMap['@extra'] = extra;
    _platform!.send(function: jsonAsMap);

    return _rawResultsSubject
        .where((Map<String, dynamic> event) => event['@extra'] == extra)
        .map((Map<String, dynamic> event) => _handleTdObject<T>(
              tdObject: event.toTdObject(),
              function: function,
            ))
        .take(1)
        .single;
  }

  @override
  T execute<T extends TdObject>(TdFunction function) {
    assert(_platform != null);

    final Map<String, dynamic> result = _platform!.execute(
      function: function.toJson(),
    );
    return _handleTdObject<T>(
      tdObject: result.toTdObject(),
      function: function,
    );
  }

  @override
  Future<void> initialize() async {
    _platform!.initialize();
    _platform!.events.listen((Map<String, dynamic> newJson) {
      final dynamic extra = newJson['@extra'];
      if (extra != null) {
        _rawResultsSubject.add(newJson);
      } else {
        final TdObject? tdObject = newJson.toTdObject();
        if (tdObject != null) {
          _updatesSubject.add(tdObject);
        }
      }
    });
  }

  @override
  void destroy() {
    _updatesSubject.close();
    _rawResultsSubject.close();
    _platform?.destroy();
    _platform = null;
  }

  T _handleTdObject<T extends TdObject>({
    required TdObject? tdObject,
    required TdFunction function,
  }) {
    if (tdObject != null) {
      if (tdObject is T) {
        return tdObject;
      } else if (tdObject is TdError) {
        throw TdFunctionException(function: function, error: tdObject);
      }
    }

    throw Exception('expected type [$T], but was ${tdObject.runtimeType}');
  }
}
