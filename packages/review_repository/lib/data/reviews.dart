import 'dart:convert';

import 'package:review_repository/models/review.dart';

final reviews = [
  {
    'logoLink': 'assets/review3logo.png',
    'review':
        '“Even with a talented team, keeping up with all the bookkeeping work for a financials was a challenging proposition. Working with the BBB gave us the added confidence we needed.”',
    'username': 'Alex Murcia',
    'userCompany': 'Care Manager, Continual Care ',
    'userLink': 'assets/review1pro.png',
  },
  {
    'logoLink': 'assets/review2logo.png',
    'review':
        '“The BBB took an ambiguous and a tight unmovable deadline, and delivered. I feel confident to work with them for our most demanding financial projects.”',
    'username': 'Jane Hatthaway',
    'userCompany': 'Production Manager, The Travelers Attic',
    'userLink': 'assets/review2pro.png',
  },
  {
    'logoLink': 'assets/review1logo.png',
    'review':
        '“The BBB were team members for all intents and purposes. One of my team said, ‘I don’t know where our team ends and their team begins’.”',
    'username': 'Jonathan Sarochar',
    'userCompany': 'CPO, instaplant',
    'userLink': 'assets/review3pro.png',
  },
];

List<Review> parseReviews(List<Map<String, String>> reviews) {
  print('in data');
  return reviews.map(fromMap).toList() as List<Review>;
}

Review fromMap(Map<String, String> map) {
  return Review(
    logoLink: map['logoLink'] ?? '',
    review: map['review'] ?? '',
    username: map['username'] ?? '',
    userCompany: map['userCompany'] ?? '',
    userLink: map['userLink'] ?? '',
  );
}
