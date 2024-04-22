class LowerBodyWorkout {
  final String imagePath, name, instruction;

  LowerBodyWorkout(
      {required this.imagePath, required this.name, required this.instruction});
}

final lowerBody = [
  [
    LowerBodyWorkout(
      imagePath: "images/squat.png",
      name: "Squat press",
      instruction: "3 sets - 6 repitions",
    ),
    LowerBodyWorkout(
      imagePath: "images/legpress.png",
      name: "Leg press",
      instruction: "4 sets - 6 repitions",
    ),
    LowerBodyWorkout(
      imagePath: "images/chest.png",
      name: "Crunches",
      instruction: "2 sets - 10 repitions",
    ),
  ],
  [
    LowerBodyWorkout(
      imagePath: "images/wings.png",
      name: "Leg extension",
      instruction: "2 sets - 8 repitions",
    ),
    LowerBodyWorkout(
      imagePath: "images/wings.png",
      name: "Claves",
      instruction: "2 sets - 4 repitions",
    ),
    LowerBodyWorkout(
      imagePath: "images/wings.png",
      name: "Hmastring",
      instruction: "4 sets - 6 repitions",
    ),
  ],
  [
    LowerBodyWorkout(
      imagePath: "images/chest.png",
      name: "Bench press",
      instruction: "3 sets - 6 repitions",
    ),
    LowerBodyWorkout(
      imagePath: "images/chest.png",
      name: "Dumbell press",
      instruction: "4 sets - 6 repitions",
    ),
    LowerBodyWorkout(
      imagePath: "images/chest.png",
      name: "Dips",
      instruction: "2 sets - 10 repitions",
    ),
  ],
  [
    LowerBodyWorkout(
      imagePath: "images/wings.png",
      name: "Pull ups",
      instruction: "2 sets - 8 repitions",
    ),
    LowerBodyWorkout(
      imagePath: "images/wings.png",
      name: "Deadlift",
      instruction: "2 sets - 4 repitions",
    ),
    LowerBodyWorkout(
      imagePath: "images/wings.png",
      name: "Lat pulldown",
      instruction: "4 sets - 6 repitions",
    ),
  ],
];
