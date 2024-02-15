import 'package:carselona_task/app_utils/models.dart';
import 'package:carselona_task/activity/ticket_controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

final dio = Dio();

class AppRepository {
  static Future<List<TicketSchema>> getTickets({required int page}) async {
    final TicketController ticketController = Get.find<TicketController>();
    EasyLoading.show();
    dynamic response = await dio.get(
        'https://testapi.carselonadaily.com/api/cleaner/getRenewalTickets?userid=489&size=20&page=$page');
    EasyLoading.dismiss();
    dynamic parsedRes = response.data;
    ticketController.maxPages = parsedRes["totalPages"];
    ticketController.maxTickets = parsedRes["totalItems"];
    List<TicketSchema> ticketList = [];
    if (parsedRes['status'] == 200) {
      List res = parsedRes['data'];
      ticketList = (res.map((e) => TicketSchema.fromJson(e)).toList());
      print(ticketList);
    } else {}

    return ticketList;
  }
}
