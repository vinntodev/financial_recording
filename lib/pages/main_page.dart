import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/pages/category_page.dart';
import 'package:flutter_project/pages/home_page.dart';
import 'package:flutter_project/pages/transaction_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late DateTime selectedDate;
  late List<Widget> _children;
  late int currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    updateView(0, DateTime.now());
    super.initState();
  }

  void updateView(int index, DateTime? date) {
    setState(() {
      if (date != null) {
        selectedDate = DateTime.parse(DateFormat('yyyy-MM-dd').format(date));
      }
      currentIndex = index;
      _children = [
        HomePage(
          selectedDate: selectedDate,
        ),
        CategoryPage()
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: (currentIndex == 0)
            ? CalendarAppBar(
                accent: Colors.lightBlueAccent,
                backButton: false,
                locale: 'id',
                onDateChanged: (value) {
                  setState(() {
                    print('SELECTED DATE' + value.toString());
                    selectedDate = value;
                    updateView(0, selectedDate);
                  });
                },
                firstDate: DateTime.now().subtract(Duration(days: 140)),
                lastDate: DateTime.now(),
              )
            : PreferredSize(
                child: Container(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
                  child: Text(
                    'Categories',
                    style: GoogleFonts.montserrat(fontSize: 20),
                  ),
                )),
                preferredSize: Size.fromHeight(100)),
        floatingActionButton: Visibility(
          visible: (currentIndex == 0) ? true : false,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(
                builder: (context) => TransactionPage(
                  transactionWithCategory: null,
                ),
              ))
                  .then((value) {
                setState(() {});
              });
            },
            backgroundColor: Colors.lightBlueAccent,
            child: Icon(Icons.add),
          ),
        ),
        body: _children[currentIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconButton(
                onPressed: () {
                  updateView(0, DateTime.now());
                },
                icon: Icon(Icons.home)),
            SizedBox(
              width: 20,
            ),
            IconButton(
                onPressed: () {
                  updateView(1, null);
                },
                icon: Icon(Icons.list))
          ]),
        ));
  }
}
