import 'package:tosontsengel_app/Service/index.dart';
import 'package:tosontsengel_app/Model/DonationModel.dart';

class DonationService {
  Future<List<DonationModel>> getDonations() async {
    final response = await ApiService().getRequest(
      '/api/donation',
    );

    List<DonationModel> donationModel;
    donationModel = (response.data['data'] as List)
        .map((e) => DonationModel.fromJson(e))
        .toList();

    // print(donationModel);

    return donationModel;
  }
}
