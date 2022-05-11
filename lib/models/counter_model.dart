class CounterModel {
  int counter;

  CounterModel({
    required this.counter,
    });

  CounterModel copyWith({
    int counter = 10,
  }) =>
      CounterModel(
          counter: counter,
          );

  factory CounterModel.fromJson(Map<String, dynamic> json) => CounterModel(
        counter: json["counter"],
      );

  Map<String, dynamic> toJson() =>
      {"counter": counter};
}
