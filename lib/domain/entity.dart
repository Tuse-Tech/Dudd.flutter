library generator_flutter;

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
abstract class Entity {
  Widget build() {
    return Container();
  }
}
