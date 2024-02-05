import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:miwmew_app/app/models/category.dart';
import 'package:miwmew_app/app/shared/url/authorization.dart';
import 'package:miwmew_app/app/shared/url/headers.dart';
import 'package:miwmew_app/app/shared/url/url_api.dart';

class CategoryService extends GetxService {
  RxList<CategoryProd> categories = <CategoryProd>[].obs;

  Future<void> getCategory() async {
    final response = await Dio().get(
      "$baseUrl/api/category",
      options: Options(headers: {
        contentType: appJson,
        auth: bearerToken,
      }),
    );
    final data = response.data;
    categories.value = (data['data'] as List<dynamic>)
        .map((categoryJson) => CategoryProd.fromJson(categoryJson))
        .toList();
  }
}
