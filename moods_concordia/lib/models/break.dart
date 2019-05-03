
class Break {
  int day;
  DateTime start;
  DateTime end;

  Break(this.day, this.start, this.end);

  bool isActive(DateTime now){ //might rename isBetween
    return now.weekday == this.day &&
        now.isAfter(start) &&
        now.isBefore(end);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Break &&
              runtimeType == other.runtimeType &&
              day == other.day &&
              start == other.start &&
              end == other.end;

  @override
  int get hashCode =>
      day.hashCode ^
      start.hashCode ^
      end.hashCode;
}