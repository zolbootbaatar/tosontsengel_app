import 'package:tosontsengel_app/Service/index.dart';
import 'package:tosontsengel_app/Model/ProgramModel.dart';

class ProgramService {
  Future<List<ProgaramModel>> getPrograms() async {
    final response = await ApiService().getRequest(
      '/api/programm',
    );

    List<ProgaramModel> programModel;
    programModel = (response.data['data'] as List)
        .map((e) => ProgaramModel.fromJson(e))
        .toList();

    return programModel;
  }
}
