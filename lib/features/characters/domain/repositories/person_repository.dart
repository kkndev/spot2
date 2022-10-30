import 'package:dartz/dartz.dart';

import '/core/data/dto/error/failure.dart';
import '/features/characters/domain/entities/person_entity.dart';

abstract class PersonRepository {
  Future<Either<Failure, List<PersonEntity>>> getAllPersons(int page);
  Future<Either<Failure, List<PersonEntity>>> searchPerson(String query);
}
