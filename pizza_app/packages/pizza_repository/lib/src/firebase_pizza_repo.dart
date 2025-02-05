import 'dart:developer' show log;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pizza_repository/pizza_repository.dart';

class FirebasePizzaRepo implements PizzaRepo {
  final pizzaCollection = FirebaseFirestore.instance.collection('pizza');

  @override
  Future<List<PizzaModel>> getPizzas() async {
    try {
      return await pizzaCollection.get().then(
            (value) => value.docs
                .map(
                  (e) => PizzaModel.fromEntity(
                    PizzaEntity.fromDocument(e.data()),
                  ),
                )
                .toList(),
          );
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
