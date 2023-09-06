import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Networking
import '../../../core/networking/api_endpoint.dart';
import '../../../core/networking/api_service.dart';

// Models
import '../models/program_model.codegen.dart';

// Providers
import '../../all_providers.dart';

// Helpers
import '../../../helpers/type.d.dart';

final programsRepositoryProvider = Provider<ProgramsRepository>((ref) {
  final _apiService = ref.watch(apiServiceProvider);
  return ProgramsRepository(apiService: _apiService);
});

class ProgramsRepository {
  final ApiService _apiService;

  ProgramsRepository({
    required ApiService apiService,
  }) : _apiService = apiService;

  Future<List<ProgramModel>> fetchAll({JSON? queryParameters}) async {
    return _apiService.getCollectionData<ProgramModel>(
      endpoint: ApiEndpoint.programs(ProgramEndpoint.BASE),
      queryParams: queryParameters,
      cachePolicy: CachePolicy.forceCache,
      cacheAgeDays: 60,
      converter: ProgramModel.fromJson,
    );
  }
}
