import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;

  const UserEntity.empty() : id = 'user_id';

  const UserEntity({
    required this.id,
  });

  @override
  List<Object?> get props => [
        id,
      ];
}
