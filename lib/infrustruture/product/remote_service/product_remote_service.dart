import 'package:injectable/injectable.dart';
import 'package:y_app/infrustruture/product/remote_service/i_product_remote_service.dart';

@LazySingleton(as: IProductRemoteService)
class ProductRemoteService implements IProductRemoteService {}
