

class CompanyItem {
  final int serialNumber;
  final String heading;
  final String companyName;
  final String city;
  final String time; // Consider using DateTime or a custom Time class
  final String readTime; // This could also be an int or double, depending on your needs
  final String companyImage; // URL or path to the image

  CompanyItem({
    required this.serialNumber,
    required this.heading,
    required this.companyName,
    required this.city,
    required this.time,
    required this.readTime,
    required this.companyImage,
  });
}


List<Map<String, dynamic>> _allItems = [
  {
    'srNo': 1,
    'heading': 'New Tech Innovations',
    'companyName': 'Tech Innovators, Inc.',
    'city': 'San Francisco',
    'time': '10:00 AM',
    'readTime': '5 mins',
    'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-png%2Fflowers&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABAD',
  },
  {
    'srNo': 2,
    'heading': 'Eco-Friendly Solutions',
    'companyName': 'Green Earth Solutions',
    'city': 'Berlin',
    'time': '11:30 AM',
    'readTime': '4 mins',
    'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-png%2Fflower&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABAI',
  },
  {
    'srNo': 3,
    'heading': 'AI in Healthcare',
    'companyName': 'NextGen Health',
    'city': 'Tokyo',
    'time': '2:00 PM',
    'readTime': '6 mins',
    'companyImage': 'https://img.freepik.com/free-psd/3d-pink-flower-isolated-transparent-background_191095-16624.jpg?size=338&ext=jpg&ga=GA1.1.735520172.1710806400&semt=ais',
  },
  {
    'srNo': 4,
    'heading': 'Fintech Revolutions',
    'companyName': 'Money Matters',
    'city': 'New York',
    'time': '4:00 PM',
    'readTime': '5 mins',
    'companyImage': 'https://img.freepik.com/free-psd/gerbera-daisy-flower-png-isolated-transparent-background_191095-11452.jpg?size=338&ext=jpg&ga=GA1.1.735520172.1710806400&semt=ais',
  },
  {
    'srNo': 5,
    'heading': 'Renewable Energy',
    'companyName': 'SunPower Innovations',
    'city': 'Amsterdam',
    'time': '9:00 AM',
    'readTime': '7 mins',
    'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngegg.com%2Fen%2Fsearch%3Fq%3DFLOWER&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABAo',
  },
  {
    'srNo': 6,
    'heading': 'Smart City Solutions',
    'companyName': 'UrbanTech',
    'city': 'Singapore',
    'time': '3:45 PM',
    'readImage': '8 mins',
    'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.rawpixel.com%2Fsearch%2Fflower%2520png&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABA4',
  },
  {
    'srNo': 7,
    'heading': 'Blockchain Breakthroughs',
    'companyName': 'Chain Innovations',
    'city': 'London',
    'time': '1:00 PM',
    'readTime': '5 mins',
    'companyImage': 'https://w7.pngwing.com/pngs/526/806/png-transparent-pink-and-red-petaled-flowers-painting-flower-decoupage-flower-watercolor-flower-arranging-photography-poster.png',
  },
  {
    'srNo': 8,
    'heading': 'The Future of Transport',
    'companyName': 'MoveFast Technologies',
    'city': 'Paris',
    'time': '10:15 AM',
    'readTime': '3 mins',
    'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngkit.com%2Fbigpic%2Fu2q8i1y3w7a9y3i1%2F&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABBI',
  },
  {
    'srNo': 9,
    'heading': 'Cybersecurity Trends',
    'companyName': 'SecureNet Tech',
    'city': 'Moscow',
    'time': '12:00 PM',
    'readTime': '6 mins',
    'companyImage': 'https://gallery.yopriceville.com/var/albums/Free-Clipart-Pictures/Flowers-PNG/Beautiful_Flower_PNG_Transparent_Clipart.png?m=1618394732',
  },
  {
    'srNo': 10,
    'heading': 'Augmented Reality in Education',
    'companyName': 'EduFuture',
    'city': 'Sydney',
    'time': '8:30 AM',
    'readTime': '4 mins',
    'companyImage': 'https://png.pngtree.com/png-vector/20230918/ourmid/pngtree-beautiful-flower-png-free-png-image_10123485.png',
  }
];
