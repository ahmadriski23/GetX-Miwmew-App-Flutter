import '../../services/auth_service.dart';

const String auth = "Authorization";
final String bearerToken = "Bearer ${AuthService.token}";
