import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '/core/data/dto/error/failure.dart';
import '/core/domain/usecase/usecase.dart';
import '/features/characters/domain/entities/person_entity.dart';
import '/features/characters/domain/repositories/person_repository.dart';

class SearchPerson extends UseCase<List<PersonEntity>, SearchPersonParams> {
  final PersonRepository personRepository;

  SearchPerson(this.personRepository);

  @override
  Future<Either<Failure, List<PersonEntity>>> call(
      SearchPersonParams params) async {
    return await personRepository.searchPerson(params.query);
  }
}

class SearchPersonParams extends Equatable {
  final String query;

  const SearchPersonParams({required this.query});

  @override
  List<Object> get props => [query];
}
