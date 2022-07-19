import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Env {
  static String? keyGoogleMapsApi = dotenv.env['KeyGoogleMapsAPI'];
}
