// To parse this JSON data, do
//
//     final dataAll = dataAllFromJson(jsonString);

import 'dart:convert';

List<DataAll> dataAllFromJson(String str) => List<DataAll>.from(json.decode(str).map((x) => DataAll.fromJson(x)));

String dataAllToJson(List<DataAll> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataAll {
    DataAll({
        this.txnDate,
        this.newCase,
        this.totalCase,
        this.newCaseExcludeabroad,
        this.totalCaseExcludeabroad,
        this.newDeath,
        this.totalDeath,
        this.newRecovered,
        this.totalRecovered,
        this.updateDate,
    });

    DateTime txnDate;
    int newCase;
    int totalCase;
    int newCaseExcludeabroad;
    int totalCaseExcludeabroad;
    int newDeath;
    int totalDeath;
    int newRecovered;
    int totalRecovered;
    DateTime updateDate;

    factory DataAll.fromJson(Map<String, dynamic> json) => DataAll(
        txnDate: json["txn_date"] == null ? null : DateTime.parse(json["txn_date"]),
        newCase: json["new_case"] == null ? null : json["new_case"],
        totalCase: json["total_case"] == null ? null : json["total_case"],
        newCaseExcludeabroad: json["new_case_excludeabroad"] == null ? null : json["new_case_excludeabroad"],
        totalCaseExcludeabroad: json["total_case_excludeabroad"] == null ? null : json["total_case_excludeabroad"],
        newDeath: json["new_death"] == null ? null : json["new_death"],
        totalDeath: json["total_death"] == null ? null : json["total_death"],
        newRecovered: json["new_recovered"] == null ? null : json["new_recovered"],
        totalRecovered: json["total_recovered"] == null ? null : json["total_recovered"],
        updateDate: json["update_date"] == null ? null : DateTime.parse(json["update_date"]),
    );

    Map<String, dynamic> toJson() => {
        "txn_date": txnDate == null ? null : "${txnDate.year.toString().padLeft(4, '0')}-${txnDate.month.toString().padLeft(2, '0')}-${txnDate.day.toString().padLeft(2, '0')}",
        "new_case": newCase == null ? null : newCase,
        "total_case": totalCase == null ? null : totalCase,
        "new_case_excludeabroad": newCaseExcludeabroad == null ? null : newCaseExcludeabroad,
        "total_case_excludeabroad": totalCaseExcludeabroad == null ? null : totalCaseExcludeabroad,
        "new_death": newDeath == null ? null : newDeath,
        "total_death": totalDeath == null ? null : totalDeath,
        "new_recovered": newRecovered == null ? null : newRecovered,
        "total_recovered": totalRecovered == null ? null : totalRecovered,
        "update_date": updateDate == null ? null : updateDate.toIso8601String(),
    };
}
