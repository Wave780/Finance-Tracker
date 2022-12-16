import 'package:fin_tracker/common/RateCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime today = DateTime.now();
  DateTime now = DateTime.now();
  int index = 1;

  List<String> months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  //int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.menu)),
          title: const Center(child: Text('Fin Tracker')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              greeting(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.shade600,
                  ),
                  child: const Center(child: Text('N 123,345,344')),
                  //color: Colors.blue.shade600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Overview Report',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              selectMonth(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: RateCard(
                      boxColor: Colors.blue,
                      child: Text('Action'),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Navigator.of(context)
              //     .push(
              //   CupertinoPageRoute(
              //     builder: (context) => //AddExpenseNoGradient(),
              //   ),
              // )
              //     .then((value) {
              //   setState(() {});
              // });
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                16.0,
              ),
            ),
            backgroundColor: Colors.pink,
            child: const Icon(
              Icons.add_outlined,
              size: 32.0,
            )));
  }

  Widget selectMonth() {
    return Padding(
      padding: const EdgeInsets.all(
        8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                index = 3;
                today = DateTime(now.year, now.month - 2, today.day);
              });
            },
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
                color: index == 3 ? Colors.pink : Colors.white,
              ),
              alignment: Alignment.center,
              child: Text(
                months[now.month - 3],
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: index == 3 ? Colors.white : Colors.pink,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                index = 2;
                today = DateTime(now.year, now.month - 1, today.day);
              });
            },
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
                color: index == 2 ? Colors.pink : Colors.white,
              ),
              alignment: Alignment.center,
              child: Text(
                months[now.month - 2],
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: index == 2 ? Colors.white : Colors.pink,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                index = 1;
                today = DateTime.now();
              });
            },
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
                color: index == 1 ? Colors.pink : Colors.white,
              ),
              alignment: Alignment.center,
              child: Text(
                months[now.month - 1],
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: index == 1 ? Colors.white : Colors.pink,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return const Text(
        '🌤️Good Morning',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      );
    }
    if (hour < 17) {
      return const Text('🌞Good Afternoon',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20));
    }
    return const Text('🌜Good Evening',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20));
  }
}
// ElevatedButton(
// child: Text('Data'),
// onPressed: () => Navigator.pop(context),
// ),
