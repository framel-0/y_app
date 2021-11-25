import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import '../../domain/delivery_location/i_delivery_location_repository.dart';

import '../../domain/delivery_location/delivery_location.dart';
import '../../domain/delivery_location/delivery_location_failure.dart';

part 'delivery_location_bloc.freezed.dart';
part 'delivery_location_event.dart';
part 'delivery_location_state.dart';

@injectable
class DeliveryLocationBloc
    extends Bloc<DeliveryLocationEvent, DeliveryLocationState> {
  final IDeliveryLocationRepository _deliveryLocationRepository;
  DeliveryLocationBloc(this._deliveryLocationRepository) : super(_Initial()) {
    on<DeliveryLocationEvent>((event, emit) {
      event.map(getLocationsStarted: (e) async* {
        emit(const DeliveryLocationState.loadInProgress());

        final failure0rSuccess =
            await _deliveryLocationRepository.getDeliveryLocations();

        emit(
          failure0rSuccess.fold(
            (f) => DeliveryLocationState.loadFailure(f),
            (products) => DeliveryLocationState.loadSuccess(products),
          ),
        );
      });
    });
  }
}
