class DayOfMonth {
  DateTime now = DateTime.now();
  DateTime lastDayOfMonth = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  DateTime addDay(int n) {
    return lastDayOfMonth = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day + n,
    );
  }

  DateTime addHour(int n) {
    return lastDayOfMonth = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      DateTime.now().hour + n,
    );
  }

  DateTime addMinute(int n) {
    return lastDayOfMonth = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      DateTime.now().hour,
      DateTime.now().minute + n,
    );
  }

  DateTime addHourAndMinute(int hours, int minutes) {
    return lastDayOfMonth = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      DateTime.now().hour + hours,
      DateTime.now().minute + minutes,
    );
  }
}
