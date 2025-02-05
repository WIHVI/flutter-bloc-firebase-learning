import '../entities/macros_entity.dart';

class MacrosModel {
  final int calories;
  final int proteins;
  final int fat;
  final int carbs;

  MacrosModel({
    required this.calories,
    required this.proteins,
    required this.fat,
    required this.carbs,
  });

  MacrosEntity toEntity() {
    return MacrosEntity(
      calories: calories,
      proteins: proteins,
      fat: fat,
      carbs: carbs,
    );
  }

  static MacrosModel fromEntity(MacrosEntity entity) {
    return MacrosModel(
      calories: entity.calories,
      proteins: entity.proteins,
      fat: entity.fat,
      carbs: entity.carbs,
    );
  }
}
