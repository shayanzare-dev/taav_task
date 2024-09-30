enum Gender {
  male(title: 'Male', value: 'MR'),
  female(title: 'Female', value: 'MS');

  final String title, value;

  const Gender({required this.title, required this.value});
}
