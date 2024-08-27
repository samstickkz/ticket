import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/res/styles/appstyles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  SizedBox(
      width: size.width*0.85,
      height: 179,
      child: Container(
        decoration: BoxDecoration(
          color: Appstyles.ticketColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20) , topRight: Radius.circular(20)),

        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
              children: [
                Text('LDN', style: Appstyles.HeadLine3.copyWith(color: Colors.white)),

Expanded(child: Container(),),
                Text('DXB' , style:Appstyles.HeadLine3.copyWith(color: Colors.white)

                ),
              ],
              ),
              Row(),
            ],
          ),
        ),


      ),

    );
  }
}

