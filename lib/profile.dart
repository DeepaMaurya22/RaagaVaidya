import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Harnessing the Healing Power of Music',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "At RaagaVaidya, our mission is to introduce the age-old practice of music therapy into the modern world. Our name, RaagaVaidya, is derived from the Sanskrit words 'Raaga,' which means melody, and 'Vaidya,' signifying healer. This fusion of tradition and technology is at the heart of our endeavor.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'The Power of Music Therapy:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Music therapy is a scientific method of curing diseases through the soothing influence of music. It has been proven to restore, maintain, and enhance emotional, physiological, and psychological well-being. The specific arrangement of swars (notes) in a raga stimulates and cures ailments by inducing electromagnetic changes in the body.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Ancient Wisdom, Modern Application:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'This healing art has deep roots in history, with luminaries like Pythagoras, Plato, and Aristotle recognizing its prophylactic and therapeutic powers. Even the Old Testament mentions King David\'s use of the harp to cure illnesses. Hippocrates, the father of modern medicine, harnessed music to heal, while in ancient Egypt, music was employed to alleviate the pain of childbirth. In India, legends tell of musicians like Thyagaraja bringing people back to life with the power of music.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Music as a Universal Energy:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Music is more than mere sound; it\'s a universal energy that moves through the medium of the atmosphere, affecting the human body. The arrangement of notes in a raga generates specific vibrations that have a profound impact on our physical and mental well-being.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'The Role of Ragas:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Each raga has a unique impact on the human body. For example, Bhairavi aids digestion and hypertension, while Bhairava promotes peace and compassion. Raga Darbari-Kanhra helps with restful sleep, and Raga Jaijaiwanti fosters joyfulness. Each raga has a specific time and season when it is most effective, in alignment with the body\'s natural rhythms.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Our Commitment:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'At RaagaVaidya, we\'re committed to making the therapeutic benefits of music accessible to everyone. We\'ve harnessed the power of music that brings the healing properties of ragas to your fingertips. With RaagaVaidya, you can discover the harmony between ancient wisdom and modern convenience.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Join us on a musical journey to well-being. Your health and happiness are our ultimate goals, and we\'re excited to be part of your healing path.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Thank you for being a part of our mission to bring music therapy to the world.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Profile extends StatefulWidget {
//   const Profile({super.key});

//   @override
//   State<Profile> createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('data'),
//       ),
//       body: Text(
//         'Profile',
//         textDirection: TextDirection.ltr,
//         style: TextStyle(color: Colors.black),
//       ),
//     );
//   }
// }
