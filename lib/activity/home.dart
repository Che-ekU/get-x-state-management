import 'package:carselona_task/activity/ticket_controller.dart';
import 'package:carselona_task/app_utils/models.dart';
import 'package:carselona_task/app_utils/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ticketController = Get.put(TicketController());
  late final Future<List<TicketSchema>> getTickets;

  @override
  void dispose() {
    ticketController.scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getTickets = AppRepository.getTickets(page: ticketController.page.value)
        .then((value) {
      ticketController.tickets += value;
      ticketController.filteredTickets = [...ticketController.tickets];
      return ticketController.filteredTickets;
    });

    ticketController.fetchMoreTickets();
  }

  @override
  Widget build(BuildContext context) {
    final TicketController ticketController = Get.find<TicketController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 53, 108),
        leading: const BackButton(color: Colors.white),
        title: const Text(
          'Renewal Tickets',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: FutureBuilder<List<TicketSchema>>(
        future: getTickets,
        builder: (context, AsyncSnapshot<List<TicketSchema>> snapshot) {
          Widget children = const SizedBox();
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              if (snapshot.hasData) {
                if (ticketController.filteredTickets.isEmpty) {
                  children = const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        'No tickets',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                } else {
                  children = Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total tickets found - ${ticketController.maxTickets}',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          decoration:
                              const InputDecoration(hintText: 'Search by name'),
                          controller: ticketController.searchController,
                          onChanged: (String val) {
                            ticketController.filterTicket();
                          },
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: GetBuilder(
                            builder: (TicketController ticketController) =>
                                ListView.builder(
                              controller: ticketController.scrollController,
                              itemCount:
                                  ticketController.filteredTickets.length,
                              itemBuilder: (context, index) {
                                return _TicketCard(
                                  details:
                                      ticketController.filteredTickets[index],
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              } else if (snapshot.hasError) {
                children = const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Something went wrong, Try again after sometime.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              }
              break;
            case ConnectionState.none:
            case ConnectionState.waiting:
            case ConnectionState.active:
              break;
          }

          return children;
        },
      ),
    );
  }
}

class _TicketCard extends StatefulWidget {
  const _TicketCard({required this.details});

  final TicketSchema details;

  @override
  State<_TicketCard> createState() => _TicketCardState();
}

class _TicketCardState extends State<_TicketCard> {
  List<int> colorIndexList = [];

  List<Color> colorList = [
    const Color.fromARGB(255, 184, 237, 144),
    const Color.fromARGB(255, 142, 219, 240),
    const Color.fromARGB(255, 223, 168, 237)
  ];

  void setIndexList() {
    List<int> indexList = [0, 1, 2];
    int listLength = widget.details.ticketSchemaTicketAssigns!.length;
    int c = (listLength / indexList.length).floor();
    for (int i = 0; i < c; i++) {
      colorIndexList = colorIndexList + indexList;
    }
    colorIndexList =
        colorIndexList + indexList.sublist(0, listLength % indexList.length);
  }

  String findServiceType(String input) {
    String service = '';
    if (input.toLowerCase().contains('admin')) {
      service = 'Grace period';
    } else if (input.toLowerCase().contains('cl_cleaner')) {
      service = 'Cleaning quality';
    } else {
      service = 'Other';
    }

    return service;
  }

  @override
  Widget build(BuildContext context) {
    setIndexList();
    colorList.shuffle();
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(12),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(2, 4),
            blurRadius: 6,
          ),
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(-2, 4),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: ColoredBox(
              color: Colors.blue.shade700,
              child: const Padding(
                padding: EdgeInsets.all(6.0),
                child: Text(
                  'Renewal Subscription',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${widget.details.customer?.firstName ?? ''} ${widget.details.customer?.lastName ?? ''}',
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  '${widget.details.ticketno}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Open at : ${widget.details.ticketSchemaCreatedAt ?? ''}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: widget.details.statusSelect == 'Closed'
                          ? Colors.green
                          : Colors.blue,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      widget.details.statusSelect ?? '',
                      style: TextStyle(
                        color: widget.details.statusSelect == 'Closed'
                            ? Colors.green
                            : Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: (widget.details.ticketSchemaTicketAssigns ?? [])
                  .map((e) => Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: colorList[colorIndexList[widget
                                .details.ticketSchemaTicketAssigns
                                ?.indexOf(e) ??
                            0]],
                      ),
                      child: Text(findServiceType(e.userTable ?? '-'))))
                  .toList(),
            ),
          ),
          // color: colorList[colorIndexList[index]]
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
