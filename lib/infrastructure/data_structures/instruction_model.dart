import 'package:flutter/foundation.dart';
import 'package:nooberfood/domain/data_structures/instruction.dart';

class InstructionModel extends Instruction {
  InstructionModel({
    @required int number,
    @required String description,
  })  : assert(number != null),
        assert(description != null),
        super(
          number: number,
          description: description,
        );
  factory InstructionModel.fromJson(Map<String, dynamic> json) {
    return InstructionModel(
      description: json["step"] as String,
      number: (json["number"] as num).toInt(),
    );
  }
}
