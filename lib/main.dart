import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //final List<Widget> items;
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessengerHomeScreen(),
    );
  }
}

class MessengerHomeScreen extends StatelessWidget {
  const MessengerHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://sites.google.com/site/duaaibsite/_/rsrc/1472778764012/5/7/images%20%281%29.jpg'),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[350],
              child: const Icon(
                Icons.camera_alt_rounded,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[350],
              child: const Icon(
                Icons.edit_rounded,
                size: 20,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade300,
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 22,
                      color: Colors.grey.shade600,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return activePersons();
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 12,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return chatItem();
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: 10,
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget activePersons() => Container(
      width: 60,
      child: Column(
        children: const [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://yt3.ggpht.com/ytc/AKedOLRDGAR3Jbi_72sccsuRTjXqjPFt3UrWTs006YoyKPc=s900-c-k-c0x00ffffff-no-rj',
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            'Mohammed Ebrahim',
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
Widget chatItem() => Row(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            'https://yt3.ggpht.com/ytc/AKedOLRDGAR3Jbi_72sccsuRTjXqjPFt3UrWTs006YoyKPc=s900-c-k-c0x00ffffff-no-rj',
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Mohamed Ebrahim ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 3,
        ),
      ],
    );
