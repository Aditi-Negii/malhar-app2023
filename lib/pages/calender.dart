import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/route_manager.dart';
import 'package:malhar_2023/components/drawer.dart';
import 'package:malhar_2023/home.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:malhar_2023/components/drawer_wrapper.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  final CalendarController _calendarController = CalendarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xff8b72be),
      //   automaticallyImplyLeading: false,
      //   // leading: IconButton(
      //   //   icon: Icon(
      //   //     Icons.arrow_back_ios,
      //   //   ),
      //   //   onPressed: () {
      //   //     Get.to(
      //   //       HomeScreen(),
      //   //     );
      //   //     // Get.to(DrawerWrapper(scaffold: AdvancedDrawer(child: child, drawer: drawer), drawerController: drawerController, disableGestures: disableGestures)));
      //   //   },
      //   // ),
      // ),
      body: SafeArea(
        child: SfCalendar(
          // showDatePickerButton: true,
          showNavigationArrow: true,
          // allowViewNavigation: true,
          viewHeaderHeight: 50,
          viewHeaderStyle: ViewHeaderStyle(
            backgroundColor: Colors.transparent,
            dayTextStyle: TextStyle(
                fontSize: 14,
                color: Color(0xff201b24),
                fontWeight: FontWeight.w500),
          ),

          headerHeight: 60,
          headerStyle: CalendarHeaderStyle(
              textAlign: TextAlign.center,
              backgroundColor: Color(0xFF201b24),
              textStyle: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 5,
                  color: Color(0xFFff5eaea),
                  fontWeight: FontWeight.w500)),
          todayHighlightColor: Color(0xff201b24),

          selectionDecoration: BoxDecoration(
            border: Border.all(color: Color(0xff201b24), width: 2),
          ),
          backgroundColor: Color(0xff8b72be),
          cellBorderColor: Colors.transparent,

          initialDisplayDate: DateTime(2023, 6, 1),
          //calendar goes from
          minDate: DateTime(2023, 6, 1),
          //till this
          maxDate: DateTime(2023, 8, 31),
          view: CalendarView.month,
          controller: _calendarController,
          monthViewSettings: const MonthViewSettings(
            showAgenda: true,
            //how much space whole agenda view takes
            // agendaItemHeight: 300, //by default
            //height of each appointment in agenda
            agendaItemHeight: 70,
            //direction of scroll
            // horizontal by default
            // navigationDirection: MonthNavigationDirection.vertical,
            //removes dates from other month
            showTrailingAndLeadingDates: false,
            // to show week day names on top
            dayFormat: 'EEE',

            //==========agenda view style begins==================//
            agendaStyle: AgendaStyle(
              placeholderTextStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  // fontStyle: FontStyle.italic,
                  color: Color(0xFF201b24)),
              backgroundColor: Color(0xff8b72be),
              appointmentTextStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  // fontStyle: FontStyle.italic,
                  color: Color(0xFF201b24)),
              dateTextStyle: TextStyle(
                  // fontStyle: FontStyle.italic
                  // ,
                  // decorationColor: Colors.black,
                  // backgroundColor: Colors.purpleAccent,

                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF201b24)),
              dayTextStyle: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF201b24)),
            ),

            //===========agenda view style ends===================//

            //=================cell style beigns ===================//
            monthCellStyle: MonthCellStyle(
                backgroundColor: Color(0xff8b72be),

                // trailingDatesBackgroundColor: Color(0xff216583),
                // leadingDatesBackgroundColor: Color(0xff216583),
                // todayBackgroundColor: Color(0xFFf7be16),
                textStyle: TextStyle(
                    fontSize: 14, fontFamily: 'Arial', color: Colors.white),
                // todayTextStyle: TextStyle(
                //     fontSize: 12,
                //     fontWeight: FontWeight.bold,
                //     fontFamily: 'Arial'),
                trailingDatesTextStyle: TextStyle(
                    // fontStyle: FontStyle.italic,
                    fontSize: 12,
                    fontFamily: 'Arial'),
                leadingDatesTextStyle: TextStyle(
                    // fontStyle: FontStyle.italic,
                    fontSize: 12,
                    fontFamily: 'Arial')),

            //==================cell style ends ends ================//
          ),
          dataSource: getCalendarDataSource(),
          onViewChanged: viewChanged,
        ),
      ),
    );
  }

  void viewChanged(ViewChangedDetails viewChangedDetails) {
    SchedulerBinding.instance.addPostFrameCallback((duration) {
      var midDate = (viewChangedDetails
          .visibleDates[viewChangedDetails.visibleDates.length ~/ 2]);
      if (midDate.month == DateTime.now().month) {
        _calendarController.selectedDate = DateTime.now();
      } else {
        _calendarController.selectedDate = DateTime(
          midDate.year,
          midDate.month,
          01,
          9,
          0,
          0,
        );
      }
    });
  }

  _DataSource getCalendarDataSource() {
    final List<Appointment> appointments = <Appointment>[];

    //=======================June==============================//
    //1
    appointments.add(Appointment(
      startTime: DateTime.utc(2023, 6, 19),
      endTime: DateTime.utc(2023, 6, 19),
      // endTime: DateTime.now().add(const Duration(hours: 1)),
      subject: 'Dance Workshop WINC',
      color: Color(0xffd6bbec),
      isAllDay: true,
    ));
    //2
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 6, 23),
      endTime: DateTime.utc(2023, 6, 23),
      subject: 'Malhar Mela PR',
      color: Color(0xffd6bbec),
    ));

    //3
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 6, 25),
      endTime: DateTime.utc(2023, 6, 25),
      subject: 'Mural Workshop WINC',
      color: Color(0xffd6bbec),
    ));

    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 6, 27),
      endTime: DateTime.utc(2023, 6, 27),
      subject: 'Garnier Event PR',
      color: Color(0xffd4bfd4),
    ));
    appointments.add(
      Appointment(
        isAllDay: true,
        startTime: DateTime.utc(2023, 6, 29),
        endTime: DateTime.utc(2023, 6, 29),
        subject: 'Navya Nanda PR',
        color: Color(0xffd6bbec),
      ),
    );
    //==========================July============================================//
    //1
    appointments.add(Appointment(
      startTime: DateTime.utc(2023, 7, 2),
      endTime: DateTime.utc(2023, 7, 2),
      // endTime: DateTime.now().add(const Duration(hours: 1)),
      subject: 'WB',
      color: Color(0xffd6bbec),
      isAllDay: true,
    ));

    //2
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 3),
      endTime: DateTime.utc(2023, 7, 3),
      subject: 'LA Treasure Hunt',
      color: Color(0xffd6bbec),
    ));

    //3
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 6),
      endTime: DateTime.utc(2023, 7, 6),
      subject: 'FA Speed Painting',
      color: Color(0xffd6bbec),
    ));
    //4
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 8),
      endTime: DateTime.utc(2023, 7, 8),
      subject: 'CL Meet',
      color: Color(0xffd4bfd4),
    ));
    //5
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 9),
      endTime: DateTime.utc(2023, 7, 9),
      subject: 'CL Meet Online',
      color: Color(0xffd6bbec),
    ));
    //6
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 10),
      endTime: DateTime.utc(2023, 7, 10),
      subject: 'Contingent Reg Starts',
      color: Color(0xffd6bbec),
    ));
    //7
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 12),
      endTime: DateTime.utc(2023, 7, 12),
      subject: 'Social Cause Event',
      color: Color(0xffd6bbec),
    ));
    //8
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 13),
      endTime: DateTime.utc(2023, 7, 13),
      subject: 'Yardsale Collection SXC',
      color: Color(0xffd6bbec),
    ));
    //8
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 13),
      endTime: DateTime.utc(2023, 7, 13),
      subject: 'Form Verification',
      color: Color(0xffd6bbec),
    ));
    //9
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 16),
      endTime: DateTime.utc(2023, 7, 16),
      subject: 'By the Bay Auditions',
      color: Color(0xffd6bbec),
    ));
    //10
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 17),
      endTime: DateTime.utc(2023, 7, 17),
      subject: 'Conclave Reveal',
      color: Color(0xffd6bbec),
    ));
    //10
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 17),
      endTime: DateTime.utc(2023, 7, 17),
      subject: 'Press Conference',
      color: Color(0xffd6bbec),
    ));
    //11
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 18),
      endTime: DateTime.utc(2023, 7, 18),
      subject: 'Contingent Reg Ends',
      color: Color(0xffd6bbec),
    ));
    //12
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 19),
      endTime: DateTime.utc(2023, 7, 19),
      subject: 'ETC Stage Combat',
      color: Color(0xffd6bbec),
    ));
    //12
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 19),
      endTime: DateTime.utc(2023, 7, 19),
      subject: 'PRNC Reg Starts',
      color: Color(0xffd6bbec),
    ));
    //13
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 22),
      endTime: DateTime.utc(2023, 7, 22),
      subject: 'PRNC Reg Ends',
      color: Color(0xffd6bbec),
    ));
    //14
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 30),
      endTime: DateTime.utc(2023, 7, 30),
      subject: 'Yardsale',
      color: Color(0xffd6bbec),
    ));
    //15
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 7, 31),
      endTime: DateTime.utc(2023, 7, 31),
      subject: 'IPA Jugalbandi',
      color: Color(0xffd6bbec),
    ));
    //=========================August================================//
    //1
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 8, 1),
      endTime: DateTime.utc(2023, 8, 1),
      subject: 'AM Night Auditions',
      color: Color(0xffd6bbec),
    ));
    //2
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 8, 2),
      endTime: DateTime.utc(2023, 8, 2),
      subject: 'AM Night Auditions',
      color: Color(0xffd6bbec),
    ));

    //2
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 8, 2),
      endTime: DateTime.utc(2023, 8, 2),
      subject: 'WINC Self Defense',
      color: Color(0xffd6bbec),
    ));
    //3
    appointments.add(Appointment(
      isAllDay: true,
      startTime: DateTime.utc(2023, 8, 6),
      endTime: DateTime.utc(2023, 8, 6),
      subject: 'Malhar by the Bay',
      color: Color(0xffd6bbec),
    ));

    return _DataSource(appointments);
  }
}

class _DataSource extends CalendarDataSource {
  _DataSource(this.source);

  List<Appointment> source;

  @override
  List<dynamic> get appointments => source;
}
