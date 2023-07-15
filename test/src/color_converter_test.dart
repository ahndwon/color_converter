// ignore_for_file: prefer_const_constructors

import 'package:color_converter/color_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColorConverter', () {
    test('can be instantiated', () {
      expect(ColorConverter(), isNotNull);
    });

    test('toJson returns white hexValue', () {
      expect(ColorConverter().toJson(Colors.white), 'ffffffff');
    });

    test('toJson returns black hexValue', () {
      expect(ColorConverter().toJson(Colors.black), 'ff000000');
    });

    test('toJson returns red hexValue', () {
      expect(ColorConverter().toJson(Colors.red), 'FFF44336'.toLowerCase());
    });

    test('toJson returns green hexValue', () {
      expect(ColorConverter().toJson(Colors.green), 'FF4CAF50'.toLowerCase());
    });

    test('toJson returns blue hexValue', () {
      expect(ColorConverter().toJson(Colors.blue), 'FF2196F3'.toLowerCase());
    });

    test('fromJson(hexValue) returns white hexValue', () {
      expect(ColorConverter().fromJson('ffffffff').value, Colors.white.value);
    });

    test('fromJson(hexValue) returns black hexValue', () {
      expect(ColorConverter().fromJson('ff000000').value, Colors.black.value);
    });

    test('fromJson(hexValue) returns red hexValue', () {
      expect(ColorConverter().fromJson('FFF44336').value, Colors.red.value);
    });

    test('fromJson(hexValue) returns green hexValue', () {
      expect(ColorConverter().fromJson('FF4CAF50').value, Colors.green.value);
    });

    test('fromJson(hexValue) returns blue hexValue', () {
      expect(ColorConverter().fromJson('FF2196F3').value, Colors.blue.value);
    });
  });

  group('HexColor', () {
    test('white toHex check', () {
      expect(Colors.white.toHex(), 'ffffffff');
    });

    test('black toHex check', () {
      expect(Colors.black.toHex(), 'ff000000');
    });

    test('red toHex check', () {
      expect(Colors.red.toHex(), 'FFF44336'.toLowerCase());
    });

    test('green toHex check', () {
      expect(Colors.green.toHex(), 'FF4CAF50'.toLowerCase());
    });

    test('blue toHex check', () {
      expect(Colors.blue.toHex(), 'FF2196F3'.toLowerCase());
    });

    test('white fromHex check', () {
      expect(HexColor.fromHex('ffffffff').value, Colors.white.value);
    });

    test('black fromHex check', () {
      expect(HexColor.fromHex('ff000000').value, Colors.black.value);
    });

    test('red fromHex check', () {
      expect(HexColor.fromHex('FFF44336').value, Colors.red.value);
    });

    test('green fromHex check', () {
      expect(HexColor.fromHex('FF4CAF50').value, Colors.green.value);
    });

    test('blue fromHex check', () {
      expect(HexColor.fromHex('FF2196F3').value, Colors.blue.value);
    });
  });
}
