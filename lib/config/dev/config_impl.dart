import '../config.dart';

class ConfigImpl implements Config {
  @override
  String get ENV => "dev";

  @override
  String get API_HOST => "http://192.168.11.5:3000";
}
