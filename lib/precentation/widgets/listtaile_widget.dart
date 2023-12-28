// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/colors.dart';

class CustomerTaileWidget extends StatelessWidget {
  const CustomerTaileWidget({
    Key? key,
    required this.age,
    required this.image,
    required this.name,
    required this.emaiId,
    //  required this.amount,
  }) : super(key: key);
  final String age;

  final String image;
  final String name;
  final String emaiId;
  // final String amount;
  @override
  Widget build(BuildContext context) {
    //  final img =baseImage+image;
    // final imgs =img   ??="https://i.pngimg.me/thumb/f/720/m2H7K9A0Z5m2G6b1.jpg";
    return Container(
      padding: const EdgeInsets.all(9),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: appBackground,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFa8a4a4).withOpacity(1),
            offset: const Offset(1, 4),
            blurRadius: 15,
            spreadRadius: -8,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // image: DecorationImage(image: NetworkImage(baseImage + image))
            ),
            child: Image.network(image,
                errorBuilder: (context, error, stackTrace) => Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Image.network(
                          "https://i.pngimg.me/thumb/f/720/m2H7K9A0Z5m2G6b1.jpg"),
                    ),
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
          ),
          const VerticalDivider(
            thickness: 1,
            color: appGrey,
          ),
          Expanded(
            child: Container(
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(age),
                  Text(emaiId),

                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 14.0,
                        color: appBlack,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Due Amount : ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
                  // Text("Due Amount : $amount",
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //     )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
            width: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  CupertinoIcons.phone_circle_fill,
                  color: appBlue,
                ),
                Container(
                  height: 25,
                  width: 20,
                  decoration: const BoxDecoration(
                    // color: appGrey,
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/wts.png",
                      ),
                    ),
                  ),
                )
                //  Icon(CupertinoIcons.phone_circle_fill),
                //  Image.asset("assets/whatsapp.png",height: 30,width: 20,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
