import 'models/models.dart';

abstract class PizzaRepo {
  Future<List<PizzaModel>> getPizzas();
}
