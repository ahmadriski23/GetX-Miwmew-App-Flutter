import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/url/authorization.dart';
import 'package:miwmew_app/app/shared/url/headers.dart';
import '../models/supply_category.dart';
import '../shared/url/url_api.dart';

class SupplyCategoryService extends GetxService {
  RxList<SupplyCategory> supplyCategories = <SupplyCategory>[].obs;

  Future<void> getSupplyCategory() async {
    final response = await Dio().get(
      "$baseUrl/api/supplyCategory",
      options: Options(headers: {
        contentType: appJson,
        auth: bearerToken,
      }),
    );
    final data = response.data;
    supplyCategories.value = (data['data'] as List<dynamic>)
        .map((supplyCatJson) => SupplyCategory.fromJson(supplyCatJson))
        .toList();
  }
}
