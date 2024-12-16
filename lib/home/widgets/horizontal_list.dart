import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, count){
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                children: [
                  Container(
                    width: 65,
                      height: 65,
                    padding: const EdgeInsets.all(8.0),
                    decoration:  BoxDecoration(shape: BoxShape.circle,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                      child: Image(image: AssetImage(""), fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const SizedBox(
                      child: Text("", maxLines: 1, overflow: TextOverflow.ellipsis,),
                    width: 55.0,

                  )
                ],
              ),
            );
          }),
    );
  }
}


//Padding(padding: EdgeInsets.only(left: 16.dp), child: Column(
// children [
// Text("Choose from Any Categories", style =),
//SizedBox(height: 20.0),
//ListView().builder(
//itemCount =
// itembuilder: (_, index) {})
// ])