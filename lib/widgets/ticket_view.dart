import 'package:flutter/material.dart';
import 'package:untitled2/res/styles/appStyles.dart';

import 'package:untitled2/widgets/ticket_circle.dart';
import 'bigdot.dart';
import 'flight_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: SizedBox(
        width: size.width * 0.85,
        height: 189,
        child: Column(
          children: [
            // blue part of the ticket
            Container(
              decoration: BoxDecoration(
                color: appStyles.ticketColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(ticket["from"]["code"],
                            style: appStyles.headLine3.copyWith(
                                color: Colors.white)),
                        Expanded(
                          child: Container(),
                        ),
                        const Bigdot(),
                        Expanded(
                          child: Stack(children: [
                            const SizedBox(
                              height: 28,
                              child: AppBuilderWidget(RandomNumberDiverder: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.55,
                                child: const Icon(Icons.local_airport_outlined,
                                    color: Colors.white, size: 30),
                              ),
                            ),
                          ]),
                        ),
                        const Bigdot(),
                        Expanded(
                          child: Container(),
                        ),
                        Text(ticket["to"]["code"],
                            style: appStyles.headLine3.copyWith(
                                color: Colors.white)),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(ticket["from"]["name"],
                            style: appStyles.headLine3.copyWith(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                        Expanded(
                          child: Container(),
                        ),
                        Text(
                          ticket["flying_time"],
                          style: appStyles.headLine3.copyWith(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Text(ticket["to"]["name"],
                            style: appStyles.headLine3.copyWith(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //middle of the ticket
            Container(
              color: appStyles.ticketColor2,
              child: const Row(
                children: [
                  TicketCircle(
                    isRight: true,
                  ),
                  Expanded(
                    child: AppBuilderWidget(
                      RandomNumberDiverder: 15,
                      width: 6,
                    ),
                  ),
                  TicketCircle(
                    isRight: false,
                  ),
                ],
              ),
            ),
            // Red part of the ticket
            Container(
              decoration: BoxDecoration(
                color: appStyles.ticketColor2,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('LDN',
                            style: appStyles.headLine3.copyWith(
                                color: Colors.white)),
                        Expanded(
                          child: Container(),
                        ),
                        const Bigdot(),
                        Expanded(
                          child: Stack(children: [
                            const SizedBox(
                              height: 28,
                              child: AppBuilderWidget(RandomNumberDiverder: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.55,
                                child: const Icon(Icons.local_airport_outlined,
                                    color: Colors.white, size: 30),
                              ),
                            ),
                          ]),
                        ),
                        const Bigdot(),
                        Expanded(
                          child: Container(),
                        ),
                        Text(ticket["number"].toString(),
                            style: appStyles.headLine3.copyWith(
                                color: Colors.white)),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(ticket['date'],
                            style: appStyles.headLine3.copyWith(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                        Expanded(
                          child: Container(),
                        ),

                        //fly time
                        Text( ticket["flying_time"]
                        ,
                          style: appStyles.headLine3.copyWith(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Text('Number',
                            style: appStyles.headLine3.copyWith(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
