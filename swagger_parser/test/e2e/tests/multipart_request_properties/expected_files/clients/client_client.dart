// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/object0.dart';
import '../models/object1.dart';

part 'client_client.g.dart';

@RestApi()
abstract class ClientClient {
  factory ClientClient(Dio dio, {String? baseUrl}) = _ClientClient;

  /// Test.
  ///
  /// Test.
  ///
  /// [files] - Sample List of Files.
  ///
  /// [address] - Sample Address.
  /// Name not received and was auto-generated.
  ///
  /// [image] - Sample Image.
  @MultiPart()
  @GET('/test-multipart-required-true')
  Future<void> testMultipartRequiredTrue({
    @Part(name: 'files') required List<File> files,
    @Part(name: 'address') required Object0 address,
    @Part(name: 'name') required String? name,
    @Part(name: 'image') File? image,
  });

  /// [address] - Name not received and was auto-generated.
  @MultiPart()
  @GET('/test-multipart-required-false')
  Future<void> testMultipartRequiredFalse({
    @Part(name: 'files') required List<File> files,
    @Part(name: 'address') required Object1 address,
    @Part(name: 'name') required String? name,
    @Part(name: 'image') File? image,
  });
}
