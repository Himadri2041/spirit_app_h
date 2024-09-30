import 'events_model.dart';

class Events{
  static List<EventModel> allevents =[
    EventModel(id: 1, eventName: "Basket Ball", date: "2024-09-21", team1: "IITG", team2: "ADBY", score: "17-15", venue: "COURT 1",caterogy:"Men" ),
    EventModel(id: 1, eventName: "Basket Ball", date: "2024-09-21", team1: "IITG", team2: "ADBY", score: "17-15", venue: "COURT 1",caterogy:"Men" ),
    EventModel(id: 1, eventName: "Basket Ball", date: "2024-09-21", team1: "IITG", team2: "ADBY", score: "17-15", venue: "COURT 1",caterogy:"Men" ),
    EventModel(id: 1, eventName: "Basket Ball", date: "2024-09-21", team1: "IITG", team2: "ADBY", score: "17-15", venue: "COURT 1",caterogy:"Men" ),
    EventModel(id: 1, eventName: "Basket Ball", date: "2024-09-21", team1: "IITG", team2: "ADBY", score: "17-15", venue: "COURT 1",caterogy:"Men" ),
    EventModel(id: 2, eventName: "Volley Ball", date: "2024-09-21", team1: "IITG", team2: "ADBY", score: "17-14", venue: "COURT 2",caterogy:"Women" ),
    EventModel(id: 3, eventName: "Basket Ball", date: "2024-09-21", team1: "IITG", team2: "ADBY", score: "17-13", venue: "COURT 3",caterogy:"Men" ),
    EventModel(id: 4, eventName: "Kho Kho", date: "2024-09-21", team1: "IITG", team2: "ADBY", score: "17-12", venue: "COURT 4",caterogy:"Men" ),
    EventModel(id: 5, eventName: "Badminton", date: "2024-09-21", team1: "IITG", team2: "ADBY", score: "17-11", venue: "COURT 5",caterogy:"Women"),
    EventModel(id: 5, eventName: "Cricket", date: "2024-09-21", team1: "IITG", team2: "IITB", score: "17-11", venue: "COURT 5",caterogy:"Women"),
  ];


  static List<EventModel> specificEVent(String eventName) {
    return allevents.where((event) => event.eventName == eventName).toList();
  }

}