import 'package:flutter/material.dart';

import '../utils/utils.dart';
import '../widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('All Tickets'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: ticketList
                        .map((singleTicket) => Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: TicketView(
                                                ticket: singleTicket,
                                              ),
                        ))
                        .toList(),
                  )),
            ],
          )
        ],
      )
    );
  }
}
