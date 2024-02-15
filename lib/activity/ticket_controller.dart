import 'package:carselona_task/app_utils/models.dart';
import 'package:carselona_task/app_utils/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TicketController extends GetxController {
  int maxPages = 0;
  int maxTickets = 0;
  RxInt page = 0.obs;
  final TextEditingController searchController = TextEditingController();

  RxList<TicketSchema> tickets = <TicketSchema>[].obs;
  List<TicketSchema> filteredTickets = <TicketSchema>[].obs;

  final ScrollController scrollController = ScrollController();

  void fetchMoreTickets() {
    scrollController.addListener(
      () {
        // final rate = scrollController.offset /
        //     scrollController.position.maxScrollExtent;
        if (scrollController.offset >=
                scrollController.position.maxScrollExtent &&
            page < maxPages - 1) {
          page++;
          AppRepository.getTickets(page: page.value).then(
            (value) => {
              tickets += value,
              filteredTickets = [...tickets],
              if (searchController.text.isNotEmpty)
                filterTicket()
              else
                update(),
            },
          );
        }
      },
    );
  }

  void filterTicket() {
    filteredTickets = [...tickets];
    filteredTickets = tickets
        .where((p0) =>
            p0.customer?.firstName
                ?.toLowerCase()
                .trim()
                .contains(searchController.text.toLowerCase().trim()) ??
            false)
        .toList();
    update();
  }
}
