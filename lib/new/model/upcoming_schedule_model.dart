class UpcomingScheduledModel {
  String? date;
  List<String>? availableSlots;
  List<String>? consultationSlots;

  UpcomingScheduledModel({this.date, this.availableSlots,this.consultationSlots});

  UpcomingScheduledModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    availableSlots = json['available_slots'].cast<String>();
    consultationSlots = json["consultation_slots"].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['available_slots'] = this.availableSlots;
    data['consultation_slots'] = this.consultationSlots;
    return data;
  }
}