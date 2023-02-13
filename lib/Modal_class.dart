class Random {
  final int number;
  final int age;
  final String phone;
  final String rDate;
  final String gender;
  final String title;
  final String first;
  final String last;
  final String name;
  final String city;
  final String state;
  final String country;
  final String email;
  final String date;
  final String image;
  final int rAge;


  Random({
    required this.gender,
    required this.title,
    required this.first,
    required this.last,
    required this.name,
    required this.number,
    required this.city,
    required this.state,
    required this.country,
    required this.rDate,
    required this.email,
    required this.date,
    required this.age,
    required this.phone,
    required this.image,
    required this.rAge
  });


  factory Random.fromJson({required Map json}){
    return Random(
        gender: json['results'][0]['gender'],
        title: json['results'][0]['name']['title'],
        first: json['results'][0]['name']['first'],
        last: json['results'][0]['name']['last'],
        name: json['results'][0]['location']['street']['name'],
        number: json['results'][0]['location']['street']['number'],
        city: json['results'][0]['location']['city'],
        state: json['results'][0]['location']['state'],
        country: json['results'][0]['location']['country'],
        rDate: json['results'][0]['registered']['date'],
        email: json['results'][0]['email'],
        date: json['results'][0]['dob']['date'],
        age: json['results'][0]['dob']['age'],
        phone: json['results'][0]['phone'],
        image: json['results'][0]['picture']['large'],
        rAge: json['results'][0]['registered']['age']
    );
  }
}
