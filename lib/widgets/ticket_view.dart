import 'package:flutter/material.dart';
import 'package:untitled2/res/styles/appstyles.dart';
import 'bigdot.dart';
import 'flight_widget.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Appstyles.ticketColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('LDN',
                          style: Appstyles.HeadLine3.copyWith(
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
                      Text('DXB',
                          style: Appstyles.HeadLine3.copyWith(
                              color: Colors.white)),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('New York',
                          style: Appstyles.HeadLine3.copyWith(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        '8h:30',
                        style: Appstyles.HeadLine3.copyWith(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text('Aba',
                          style: Appstyles.HeadLine3.copyWith(
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
            color: Appstyles.ticketColor2,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                  height: 20,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Appstyles.bgColor,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                SizedBox(
                  width: 10,
                  height: 20,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Appstyles.bgColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
          ),
// middle of ticket ends here
          Container(
            decoration: BoxDecoration(
              color: Appstyles.ticketColor2,
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
                          style: Appstyles.HeadLine3.copyWith(
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
                      Text('DXB',
                          style: Appstyles.HeadLine3.copyWith(
                              color: Colors.white)),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('New York',
                          style: Appstyles.HeadLine3.copyWith(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        '8h:30',
                        style: Appstyles.HeadLine3.copyWith(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text('Aba',
                          style: Appstyles.HeadLine3.copyWith(
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
    );
  }
}
