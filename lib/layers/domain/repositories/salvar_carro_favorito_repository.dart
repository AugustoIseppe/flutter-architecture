import '../entity/carro_entity.dart';

abstract class SalvarCarroFavoritoRepository {
  Future<bool> call(CarroEntity carroEntity);
}
