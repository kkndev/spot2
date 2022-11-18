import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../repository/parking_camera_repository.dart';
import 'usecase.dart';

class GetParkingCameraUsecase extends UseCase<String, GetParkingCameraParams> {
  final ParkingCameraRepository parkingCameraRepository;

  GetParkingCameraUsecase(this.parkingCameraRepository);

  @override
  Future<Either<Failure, String>> call(GetParkingCameraParams params) async {
    return await parkingCameraRepository.getImageUrl(
      cameraUid: params.cameraUid,
      parkingUid: params.parkingUid,
    );
  }
}

class GetParkingCameraParams extends Equatable {
  final String cameraUid;
  final String parkingUid;

  const GetParkingCameraParams({
    required this.cameraUid,
    required this.parkingUid,
  });

  @override
  List<Object> get props => [cameraUid, parkingUid];
}
