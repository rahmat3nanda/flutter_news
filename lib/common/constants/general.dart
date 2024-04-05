import 'dart:developer';

import 'package:flutter_news/common/constants/string.dart';

void printLog(dynamic data) {
  log("[${DateTime.now().toUtc()}]${AppString.logTag}$data");
}
