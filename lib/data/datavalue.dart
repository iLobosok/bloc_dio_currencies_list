import 'dart:convert';

class Datavalue {
  final int curId;
  final String date;
  final String curAbbreviation;
  final int curScale;
  final String curName;
  final double curOfficialRate;
  Datavalue({
    required this.curId,
    required this.date,
    required this.curAbbreviation,
    required this.curScale,
    required this.curName,
    required this.curOfficialRate,
  });

  Datavalue copyWith({
    int? curId,
    String? date,
    String? curAbbreviation,
    int? curScale,
    String? curName,
    double? CurOfficialRate,
  }) {
    return Datavalue(
      curId: curId ?? this.curId,
      date: date ?? this.date,
      curAbbreviation: curAbbreviation ?? this.curAbbreviation,
      curScale: curScale ?? this.curScale,
      curName: curName ?? this.curName,
      curOfficialRate: CurOfficialRate ?? this.curOfficialRate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Cur_ID': curId,
      'Date': date,
      'Cur_Abbreviation': curAbbreviation,
      'Cur_Scale': curScale,
      'Cur_Name': curName,
      'Cur_OfficialRate': curOfficialRate,
    };
  }

  factory Datavalue.fromMap(Map<String, dynamic> map) {
    return Datavalue(
      curId: map['Cur_ID']?.toInt() ?? 0,
      date: map['Date'] ?? '',
      curAbbreviation: map['Cur_Abbreviation'] ?? '',
      curScale: map['Cur_Scale']?.toInt() ?? 0,
      curName: map['Cur_Name'] ?? '',
      curOfficialRate: map['Cur_OfficialRate']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Datavalue.fromJson(String source) =>
      Datavalue.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Datavalue(Cur_ID: $curId, Date: $date, Cur_Abbreviation: $curAbbreviation, Cur_Scale: $curScale, Cur_Name: $curName, Cur_OfficialRate: $curOfficialRate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Datavalue &&
        other.curId == curId &&
        other.date == date &&
        other.curAbbreviation == curAbbreviation &&
        other.curScale == curScale &&
        other.curName == curName &&
        other.curOfficialRate == curOfficialRate;
  }

  @override
  int get hashCode {
    return curId.hashCode ^
        date.hashCode ^
        curAbbreviation.hashCode ^
        curScale.hashCode ^
        curName.hashCode ^
        curOfficialRate.hashCode;
  }
}
