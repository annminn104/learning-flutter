import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../core/networking/api_endpoint.dart';
import '../../../core/networking/api_service.dart';
import '../models/activity_status_model.codegen.dart';
import '../../app_provider.dart';
import '../../../shared/types/typedefs.dart';

final activityStatusesRepositoryProvider =
    Provider<ActivityStatusesRepository>((ref) {
  final _apiService = ref.watch(apiServiceProvider);
  return ActivityStatusesRepository(apiService: _apiService);
});

class ActivityStatusesRepository {
  final ApiService _apiService;

  ActivityStatusesRepository({
    required ApiService apiService,
  }) : _apiService = apiService;

  Future<List<ActivityStatusModel>> fetchAll({JSON? queryParameters}) async {
    return _apiService.getCollectionData<ActivityStatusModel>(
      endpoint: ApiEndpoint.activityStatuses(ActivityStatusEndpoint.BASE),
      queryParams: queryParameters,
      cachePolicy: CachePolicy.forceCache,
      converter: ActivityStatusModel.fromJson,
    );
  }
}
