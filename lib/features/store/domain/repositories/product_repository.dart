import 'package:dartz/dartz.dart';
import 'package:tinder_clone/core/error/failure/failure.dart';
import 'package:tinder_clone/features/store/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<ProductEntity>>> getProductsList();

  Either<Failure, List<ProductEntity>> filterProductList();

  List<ProductCategory> setFilters(ProductCategory productCategory);
}
