import "package:get_it/get_it.dart";
import "package:injectable/injectable.dart";
import "injectable.config.dart";

final getit = GetIt.instance;
@InjectableInit(
    initializerName: 'init', preferRelativeImports: true, asExtension: true)
Future<void> configureinjection() async {
  await getit.init(environment: Environment.prod);
}
