import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../models/supply.dart';
import '../shared/url/authorization.dart';
import '../shared/url/headers.dart';
import '../shared/url/url_api.dart';

class SupplyService extends GetxService {
  RxList<Supply> supplies = <Supply>[].obs;

  Future<void> getSupplyById(id) async {
    final response = await Dio().get("$baseUrl/api/supply/$id",
        options: Options(headers: {
          contentType: appJson,
          auth: bearerToken,
        }));
    final data = response.data;
    supplies.value = (data['data'] as List<dynamic>)
        .map((supplyJson) => Supply.fromJson(supplyJson))
        .toList();
  }
}
