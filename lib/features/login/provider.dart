import 'package:easy_games/features/login/view_models/auth_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = ChangeNotifierProvider((ref) => AuthViewModel());
