class EventModel{
  final int id;
  final String eventName;
  final String caterogy;
  final String date;
  final String team1;
  final String team2;
  final String venue;
  final String score;
  EventModel({
    required this.id,
    required this.eventName,
    required this.caterogy,
    required this.date,
    required this.team1,
    required this.team2,
    required this.score,
    required this.venue,
});
}