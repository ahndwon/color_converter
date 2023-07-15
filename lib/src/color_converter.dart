import 'package:color_converter/color_converter.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

/// toJson, fromJson implementation for Color
/// uses hex values
class ColorConverter implements JsonConverter<Color, String> {
  // ignore: public_member_api_docs
  const ColorConverter();

  @override
  Color fromJson(String hexValue) => HexColor.fromHex(hexValue);

  @override
  String toJson(Color value) => value.toHex();
}
