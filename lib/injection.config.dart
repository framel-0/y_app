// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i41;
import 'application/auth/phone_number_verification/phone_number_verification_bloc.dart'
    as _i37;
import 'application/auth/register_form/register_form_bloc.dart' as _i39;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i40;
import 'application/delivery_location/delivery_location_bloc.dart' as _i22;
import 'application/event_type/event_type_bloc.dart' as _i34;
import 'application/product/product_bloc.dart' as _i19;
import 'application/profile/profile_bloc.dart' as _i38;
import 'application/setups/setups_bloc.dart' as _i33;
import 'domain/auth/i_auth_facade.dart' as _i35;
import 'domain/delivery_location/i_delivery_location_repository.dart' as _i9;
import 'domain/event_type/i_event_type_repository.dart' as _i27;
import 'domain/payment_method/i_payment_method_repository.dart' as _i13;
import 'domain/product/i_product_repository.dart' as _i17;
import 'domain/setups/i_setup_repository.dart' as _i31;
import 'infrustruture/auth/app_user_dao.dart' as _i4;
import 'infrustruture/auth/auth_facade.dart' as _i36;
import 'infrustruture/auth/remote_service/auth_remote_service.dart' as _i24;
import 'infrustruture/auth/remote_service/i_auth_remote_service.dart' as _i23;
import 'infrustruture/core/injectable_module.dart' as _i43;
import 'infrustruture/core/pre_injectable_module.dart' as _i42;
import 'infrustruture/core/rest_client.dart' as _i21;
import 'infrustruture/delivery_location/delivery_location_repository.dart'
    as _i10;
import 'infrustruture/delivery_location/local_service/delivery_location_local_service.dart'
    as _i8;
import 'infrustruture/delivery_location/local_service/i_delivery_location_local_service.dart'
    as _i7;
import 'infrustruture/event_type/event_type_repository.dart' as _i28;
import 'infrustruture/event_type/local_service/event_type_local_service.dart'
    as _i6;
import 'infrustruture/event_type/remote_service/event_type_remote_service.dart'
    as _i26;
import 'infrustruture/event_type/remote_service/i_event_type_remote_service.dart'
    as _i25;
import 'infrustruture/firebase/push_notification_manager.dart' as _i20;
import 'infrustruture/payment_method/local_service/i_payment_method_local_service.dart'
    as _i11;
import 'infrustruture/payment_method/local_service/payment_method_local_service.dart'
    as _i12;
import 'infrustruture/payment_method/payment_method_repository.dart' as _i14;
import 'infrustruture/product/product_repository.dart' as _i18;
import 'infrustruture/product/remote_service/i_product_remote_service.dart'
    as _i15;
import 'infrustruture/product/remote_service/product_remote_service.dart'
    as _i16;
import 'infrustruture/setups/remote_service/i_setups_remote_service.dart'
    as _i29;
import 'infrustruture/setups/remote_service/setups_remote_service.dart' as _i30;
import 'infrustruture/setups/setups_repository.dart'
    as _i32; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final preInjectableModule = _$PreInjectableModule();
  final injectableModule = _$InjectableModule();
  await gh.factoryAsync<_i3.Box<_i4.AppUserDao>>(
      () => preInjectableModule.cartBox,
      preResolve: true);
  gh.lazySingleton<_i5.Dio>(() => injectableModule.dio);
  gh.lazySingleton<_i6.EventTypeLocalService>(
      () => _i6.EventTypeLocalService());
  gh.lazySingleton<_i7.IDeliveryLocationLocalService>(
      () => _i8.DeliveryLocationLocalService());
  gh.lazySingleton<_i9.IDeliveryLocationRepository>(() =>
      _i10.DeliveryLocationRepository(get<_i8.DeliveryLocationLocalService>()));
  gh.lazySingleton<_i11.IPaymentMethodLocalService>(
      () => _i12.PaymentMethodLocalService());
  gh.lazySingleton<_i13.IPaymentMethodRepository>(() =>
      _i14.PaymentMethodRepository(get<_i11.IPaymentMethodLocalService>()));
  gh.lazySingleton<_i15.IProductRemoteService>(
      () => _i16.ProductRemoteService());
  gh.lazySingleton<_i17.IProductRepository>(
      () => _i18.ProductRepository(get<_i15.IProductRemoteService>()));
  gh.factory<_i19.ProductBloc>(
      () => _i19.ProductBloc(get<_i17.IProductRepository>()));
  gh.factory<_i20.PushNotificationsManager>(
      () => _i20.PushNotificationsManager());
  gh.lazySingleton<_i21.RestClient>(() => injectableModule.restClient);
  gh.factory<_i22.DeliveryLocationBloc>(
      () => _i22.DeliveryLocationBloc(get<_i9.IDeliveryLocationRepository>()));
  gh.lazySingleton<_i23.IAuthRemoteService>(
      () => _i24.AuthRemoteService(get<_i21.RestClient>()));
  gh.lazySingleton<_i25.IEventTypeRemoteService>(
      () => _i26.EventTypeRemoteService(get<_i21.RestClient>()));
  gh.lazySingleton<_i27.IEventTypeRepository>(() => _i28.EventTypeRepository(
      get<_i6.EventTypeLocalService>(), get<_i25.IEventTypeRemoteService>()));
  gh.lazySingleton<_i29.ISetupsRemoteService>(
      () => _i30.SetupsRemoteService(get<_i21.RestClient>()));
  gh.lazySingleton<_i31.ISetupsRepository>(
      () => _i32.SetupsRepository(get<_i29.ISetupsRemoteService>()));
  gh.factory<_i33.SetupsBloc>(
      () => _i33.SetupsBloc(get<_i31.ISetupsRepository>()));
  gh.factory<_i34.EventTypeBloc>(
      () => _i34.EventTypeBloc(get<_i27.IEventTypeRepository>()));
  gh.lazySingleton<_i35.IAuthFacade>(() => _i36.AuthFacade(
      get<_i23.IAuthRemoteService>(), get<_i3.Box<_i4.AppUserDao>>()));
  gh.factory<_i37.PhoneNumberVerificationBloc>(
      () => _i37.PhoneNumberVerificationBloc(get<_i35.IAuthFacade>()));
  gh.factory<_i38.ProfileBloc>(() => _i38.ProfileBloc(get<_i35.IAuthFacade>()));
  gh.factory<_i39.RegisterFormBloc>(
      () => _i39.RegisterFormBloc(get<_i35.IAuthFacade>()));
  gh.factory<_i40.SignInFormBloc>(
      () => _i40.SignInFormBloc(get<_i35.IAuthFacade>()));
  gh.factory<_i41.AuthBloc>(() => _i41.AuthBloc(get<_i35.IAuthFacade>()));
  return get;
}

class _$PreInjectableModule extends _i42.PreInjectableModule {}

class _$InjectableModule extends _i43.InjectableModule {}
