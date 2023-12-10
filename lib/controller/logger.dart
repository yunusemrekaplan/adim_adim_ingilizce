import 'dart:convert';

import '../model/log.dart';

class Logger {
  final List<Log> _logs = [];

  void log(String state, String errorMessage) {
    _logs.add(Log(
      dateTime: DateTime.now(),
      state: state,
      errorMessage: errorMessage,
    ));
  }

  String logsToJson() {
    List<Map> logsMap = _logs.map((log) => log.toMap()).toList();
    return jsonEncode(logsMap);
  }
}
