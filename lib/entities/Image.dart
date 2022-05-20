library generator_flutter;

import 'dart:convert';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart' as e;
import 'package:generator_flutter/domain/entity.dart';

class Image implements Entity {
  int height = 0;
  int width = 0;
  String background = "";
  Image();
  factory Image.fromJson(String json) {
    var entity = Image();
    var dataMap = jsonDecode(json);
    entity.height = dataMap["height"]["state"];
    entity.width = dataMap["width"]["state"];

    entity.background = (dataMap["background"]["state"] as String)
        .replaceAll("/^data:image\/[a-z]+;base64,/", "");
    return entity;
  }

  @override
  Widget build() {
    return e.Image.memory(base64Decode(background));
  }
}
