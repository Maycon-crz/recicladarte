import 'package:dio/dio.dart';

import '../modules/core/models/api_model.dart';
import '../modules/core/models/pagination_filter.dart';

class HomeRepository {
  Dio _dio;

  HomeRepository(this._dio);

  Future<List<ApiModel>> findAll(PaginationFilter filter) {
    return _dio.get('/users', queryParameters: {
      'page': filter.page,
      'limit': filter.limit,
    }).then(
      (res) => res.data
          ?.map<ApiModel>(
            (u) => ApiModel.fromMap(u),
          )
          ?.toList(),
    );
  }
}
