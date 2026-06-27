import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class FileToJsonConverter implements JsonConverter<String, MultipartFile> {
  const FileToJsonConverter();

  @override
  String fromJson(MultipartFile json) {
    return "";
  }

  @override
  MultipartFile toJson(String object) {
    return MultipartFile.fromString(object);
  }
}
