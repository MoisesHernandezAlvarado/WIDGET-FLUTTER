import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/info/info.dart';
import 'package:widget_app/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: "/", routes: [
  GoRoute(
    path: "/",
    builder: (context, state) {
      return const HomeScreen();
    },
  ),
  GoRoute(
    path: "/counter",
    builder: (context, state) {
      return const CounterScreen();
    },
  ),
  GoRoute(
    path: "/layout",
    builder: (context, state) {
      return const LayoutScreen();
    },
  ),
  GoRoute(
    path: "/cards",
    builder: (context, state) {
      return const CardsScreen();
    },
  ),
  GoRoute(
    path: "/buttons",
    builder: (context, state) {
      return const ButtonsScreen();
    },
  ),
  GoRoute(
    path: "/text-fields",
    builder: (context, state) {
      return const TextFieldScreen();
    },
  ),
  GoRoute(
    path: "/inicio",
    builder: (context, state) {
      return const InicioScreen();
    },
  ),
  GoRoute(
    path: "/crear-perfil",
    builder: (context, state) {
      return const CrearPerfilScreen();
    },
  ),
  GoRoute(
    path: "/ver-perfil",
    builder: (context, state) {
      final datosUsuario = state.extra as Map<String, String>;
      return VerPerfilScreen(datos: datosUsuario);
    },
  ),
  GoRoute(
    path: "/info/:value/:age/:ocupation",
    builder: (context, state) {
      final value = state.pathParameters["value"] ?? '';
      final age = int.tryParse(state.pathParameters["age"] ?? '0') ?? 0;
      final ocupation = state.pathParameters["ocupation"] ?? '';
      return InfoScreen(value: value, age: age, ocupation: ocupation);
    },
  ),
]);
