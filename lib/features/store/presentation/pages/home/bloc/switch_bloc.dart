import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder_clone/core/helper/locator.dart';
import 'package:tinder_clone/features/store/domain/entities/product_entity.dart';
import 'package:tinder_clone/features/store/domain/repositories/product_repository.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  final ProductRepository _productRepository = locator.get<ProductRepository>();
  SwitchBloc() : super(const SwitchInitial()) {
    on<Filter>(
      (event, emit) {
        emit(
          SwitchedState(
            productCategoryList: _productRepository.setFilters(
              event.productCategory,
            ),
          ),
        );
      },
    );
  }
}
