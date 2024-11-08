import 'package:arquitetura/layers/domain/entity/carro_entity.dart';
import 'package:arquitetura/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:dartz/dartz.dart';

class GetCarrosPorPorCorUsecaseImp implements GetCarrosPorCorUsecase {
  final GetCarrosPorCorRepository _getCarrosPorCorRepository;

  GetCarrosPorPorCorUsecaseImp(this._getCarrosPorCorRepository);

  @override
  Either<Exception, CarroEntity> call(String cor) {
    return _getCarrosPorCorRepository(cor);
  }
}
