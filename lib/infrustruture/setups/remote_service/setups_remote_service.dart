import 'package:injectable/injectable.dart';

import '../../core/rest_client.dart';
import '../setups_dto.dart';
import 'i_setups_remote_service.dart';

@LazySingleton(as: ISetupsRemoteService)
class SetupsRemoteService implements ISetupsRemoteService {
  final RestClient _client;

  SetupsRemoteService(this._client);

  @override
  Future<SetupsDto> getSetups() async {
    return await _client.setups();
  }
}
