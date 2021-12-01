// ignore: unused_import
import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget receiverBubble({
      required String imageUrl,
      required String text,
      required String time,
    }) {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              imageUrl,
              width: 40,
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: const BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xff505C6B),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Color(0xff505C6B),
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget senderBubble({
      required String imageUrl,
      required String text,
      required String time,
    }) {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Color(0xff505C6B),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Color(0xff505C6B),
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Image.asset(
              imageUrl,
              width: 40,
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        width: double.infinity,
        height: 115,
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/group1.png',
              width: 55,
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Jakarta Fair',
                  style: TextStyle(
                    color: Color(0xff2C3A59),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '14,209 members',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color(0xff808BA2),
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
            const Spacer(),
            Image.asset(
              'assets/images/call_btn.png',
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              receiverBubble(
                imageUrl: 'assets/images/friend1.png',
                text: 'How are ya guys?',
                time: '2:30',
              ),
              receiverBubble(
                imageUrl: 'assets/images/friend2.png',
                text: 'Find here :P',
                time: '2:30',
              ),
              senderBubble(
                imageUrl: 'assets/images/profile.png',
                text:
                    'Thinking about how to deal\nwith this client from hell...',
                time: '22:08',
              ),
              receiverBubble(
                imageUrl: 'assets/images/friend3.png',
                text: 'Love them',
                time: '23:11',
              ),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Type message ...',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Color(0xff999999),
                fontFamily: 'Poppins',
              ),
            ),
            Image.asset(
              'assets/images/btn_send.png',
              width: 35,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffF8FAFC),
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
