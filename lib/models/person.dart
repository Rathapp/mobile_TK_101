class Person {
  final int id;
  final String name;
  final int age;
  final String job;
  final String image;

  Person({
    required this.id,
    required this.name,
    required this.age,
    required this.job,
    required this.image,
  });

  // Convert JSON to Object
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      job: json['job'],
      image: json['image'],
    );
  }

  // Convert Object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'job': job,
      'image': image,
    };
  }
}