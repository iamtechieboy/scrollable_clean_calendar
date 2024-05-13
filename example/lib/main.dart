import 'package:flutter/material.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CleanCalendarController calendarController = CleanCalendarController(
    minDate: DateTime.parse("2023-01-01"),
    maxDate: DateTime.now(),
    initialFocusDate: DateTime.now(),
    initialDateSelected: DateTime.now(),
    endDateSelected: DateTime.now(),
    onRangeSelected: (firstDate, secondDate) {},
    onDayTapped: (date) {},
    // readOnly: true,
    onPreviousMinDateTapped: (date) {},
    onAfterMaxDateTapped: (date) {},
    // initialFocusDate: DateTime(2023, 5),
    // initialDateSelected: DateTime(2022, 3, 15),
    // endDateSelected: DateTime(2022, 3, 20),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrollable Clean Calendar',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Colors.brown,
          primaryContainer: Colors.yellow,
          secondary: Color(0xFFD32F2F),
          secondaryContainer: Color(0xFF9A0007),
          surface: Color(0xFFDEE2E6),
          background: Color(0xFFF8F9FA),
          error: Color(0xFF96031A),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scrollable Clean Calendar'),
          actions: [
            IconButton(
              onPressed: () {
                /// Selection of yesterday
                // calendarController = CleanCalendarController(
                //   minDate: DateTime.parse("2023-01-01"),
                //   maxDate: DateTime.now(),
                //   initialFocusDate: DateTime.now().subtract(Duration(days: 1)),
                //   initialDateSelected: DateTime.now().subtract(Duration(days: 1)),
                //   endDateSelected: DateTime.now().subtract(Duration(days: 1)),
                // );

                /// Selection of week
                // DateTime now = DateTime.now();
                // DateTime lastMonday = now.subtract(Duration(days: now.weekday - 1));
                // DateTime startOfLastWeek = lastMonday.subtract(Duration(days: 7));
                // DateTime endOfLastWeek = lastMonday.subtract(Duration(days: 1));
                // calendarController = CleanCalendarController(
                //   minDate: DateTime.parse("2023-01-01"),
                //   maxDate: DateTime.now(),
                //   initialFocusDate: DateTime.now(),
                //   initialDateSelected: startOfLastWeek,
                //   endDateSelected: endOfLastWeek,
                // );

                /// Selection of month
                // DateTime now = DateTime.now();
                // DateTime firstDayOfMonth = DateTime(now.year, now.month, 1);
                // calendarController = CleanCalendarController(
                //   minDate: DateTime.parse("2023-01-01"),
                //   maxDate: DateTime.now(),
                //   initialFocusDate: DateTime.now(),
                //   initialDateSelected: firstDayOfMonth,
                //   endDateSelected: now,
                // );

                /// Selection of year
                // DateTime now = DateTime.now();
                // DateTime firstDayOfYear = DateTime(now.year, 1, 1);
                // calendarController = CleanCalendarController(
                //   minDate: DateTime.parse("2023-01-01"),
                //   maxDate: DateTime.now(),
                //   initialFocusDate: DateTime.now(),
                //   initialDateSelected: firstDayOfYear,
                //   endDateSelected: now,
                // );

                setState(() {});
              },
              icon: const Icon(Icons.clear),
            )
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   child: const Icon(Icons.arrow_downward),
        //   onPressed: () {
        //     calendarController.jumpToMonth(date: DateTime(2022, 8));
        //   },
        // ),
        body: ScrollableCleanCalendar(
          calendarController: calendarController,
          layout: Layout.BEAUTY,
          calendarCrossAxisSpacing: 0,
          daySelectedBackgroundColor: Colors.green,
          daySelectedBackgroundColorBetween: Colors.green,
          dayRadius: 50,
          dayDisableColor: Colors.red,
          daySelectedTextColorBetween: Colors.white,
        ),
      ),
    );
  }
}
