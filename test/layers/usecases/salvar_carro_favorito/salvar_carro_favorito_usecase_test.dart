import 'package:arquitetura/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:arquitetura/layers/domain/entity/carro_entity.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:test/test.dart';

main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUsecase useCase =
        SalvarCarroFavoritoUsecaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(
      nome: 'Gol',
      tipo: 'Hatch',
      placa: 'ABC1234',
      qtdPortas: 4,
      valor: 10000,
    );

    var result = await useCase(carro);
    late bool resultExpected;
    result.fold((l) => null, (r) => resultExpected = r);

    expect(resultExpected, true);
  });

  test('Espero que não salve o carro quando o valor <= 0', () async {
    SalvarCarroFavoritoUsecase useCase =
        SalvarCarroFavoritoUsecaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(
      nome: 'Gol',
      tipo: 'Hatch',
      placa: 'ABC1234',
      qtdPortas: 4,
      valor: 0,
    );

    var result = await useCase(carro);
    late bool resultExpected;
    result.fold((l) => null, (r) => resultExpected = r);
    expect(resultExpected, false);
  });
}
