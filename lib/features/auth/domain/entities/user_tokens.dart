import 'package:equatable/equatable.dart';

class UserTokens extends Equatable {
  final String userMasterToken;
  final String userMasterRefreshToken;
  final String userSpotToken;

  const UserTokens({
    required this.userMasterToken,
    required this.userMasterRefreshToken,
    required this.userSpotToken,
  });

  @override
  List<Object?> get props => [
        userMasterToken,
        userMasterRefreshToken,
        userSpotToken,
      ];
}
