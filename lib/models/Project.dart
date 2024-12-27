import 'package:chirag_portfolio/components/images.dart';

class Project {
  final String? title, description, link;
  List? path;

  Project({
    this.title,
    this.description,
    this.path,
    this.link,
  });
}

List<Project> demo_projects = [

  Project(
    link: "https://github.com/chiragbachwani/Health-Scan-Pro.git",
    title: "HealthScan Pro : A Health based social media app ",
    path: [hs1, hs2, hs3, hs4],
    description:
        "A Health based social media app which also has diagnosis of 6 types of disease swhich can be detected ussing some ML models by providing data or images needed, users can also post their issues and the community will try try to help them. ",
  ),


   Project(
    link: "https://github.com/chiragbachwani/antarmitra",
    title: "AntarMitra : Your Mental Heath Buddy",
    path: [am1, am2, am3, am4, am5, am6, am7],
    description:
        "AntarMitra is a meditation and self-care app crafted with Flutter, Dart, Firebase, and GetX. It hosts a community feed where users find support from Therapists. It has integrated guided video meditations to facilitate users in establishing regular mindfulness routines. A dynamic reward system further encourages user engagement and commitment to their mental well-being journey.",
  ),
   Project(
    link: "https://github.com/chiragbachwani/Scrabble--A_Notes_App.git",
    title: "Scrabble : A Notes App",
    path: [sc1, sl6, sc2, sc3 , sc4, sc5],
    description:
        "Scrabble is a simple cloud connected notes app, with the help of which you can access your notes from anywhere, by just a google signin.",
  ),
   Project(
    link: "https://github.com/chiragbachwani/kuvaka-task.git",
    title: "Kuvaka :Food Delivery Partner App",
    path: [k0, k1, k2, k3, k4, k5],
    description:
        "Kuvaka is a Food Devliery partner side app made using flutter and firebase. It has various fucntionalities including map selection, online/offline toggle, uploading documents, order history etc. ",
  ),
  Project(
    link: "https://github.com/Chirag-bachwani/QuickBuy-User_side.git",
    title: " QuickBuy:-E-Commerce App",
    path: [qb0, qb1, qb2, qb3, qb4, qb5, qb6, qb7, qb8],
    description:
        "It is the First half of the Quick Buy Project.It is a app through which users can shop and make thier shopping experience easy by functionalities like add to cart, add to wishlist, shop by category, select address ,view wishlst, chat with the seller,featured produtcs,top pics etc. Its backend in on firebase and the Authorization is also through firebase auth",
  ),
  Project(
    link: "https://github.com/Chirag-bachwani/QuickBuy-Seller_side.git",
    title: " QuickBuy:-E-Commerce Seller's App",
    path: [qbs0, qbs1, qbs2, qbs3, qbs4, qbs5, qbs6, qbs7],
    description:
        "It is the Other Half of the QuickBuy Project.The QuickBuy Seller App is designed to make the selling experience of the vendors seamless, it also has dashboard functionalities, edit porduct, add product , set to favourite, populor products, feature a product, confirm order, order shipped confirmation etc",
  ),
  Project(
      link: "https://github.com/Chirag-bachwani/ChatterBox.git",
      title: "ChatterBox:-Responsive Chat App",
      description:
          "ChatterBox, a chat app using Flutter that provides real-time communication. Here's a rundown of its features and the technologies it utilizes.Key Features Includes Real-time Chat,Mobile Verification to Ensure secure login,Stunning UI,Profile Customization",
      path: [c0, c1, c2, c4, c5, c6, c7]),
      Project(
    link: "https://github.com/chiragbachwani/Scrabble--A_Notes_App",
    title: "Scrabble - A notes App",
    path: [sc1,sc2,sc3,sc4,sc5],
    description:
        "It is a simple yet creative notes app in which users can save their notes and can access then from any device using thier gmail id, its backend is in NodeJs",
  ),
  // Project(
  //     link: "https://github.com/Chirag-bachwani/Weather_App_flutter.git",
  //     title: "Weather App with Light and Dark Theme",
  //     description:
  //         "It's designed to keep you informed about the current weather conditions, as well as the forecast for the next 3 hours and the next 5 days. I've incorporated an API that fetches the current weather data based on your location.It also hasdark mode and light mode toggle option",
  //     path: [
  //       w0,
  //       w1,
  //       w2,
  //       w3,
  //     ]),
  // Project(
  //     link: "https://github.com/Chirag-bachwani/PokeDex.git",
  //     title: "Responsive PokeDex",
  //     description:
  //         "It's a Pokemon theme based App which is inspired by the Device used in the Anime 'PokeDex' which stores the information of all teh pokemons. this app does the same",
  //     path: [p0, p1, p2]),

  // Project(
  //   title: "Covid-19 App - Flutter UI",
  //   description:
  //       "We redesign the outlook app also make it responsive so that you can run it everywhere on your phone, tab, or web. In this flutter responsive video, we will show you the real power of flutter. Make mobile, web, and desktop app from a single codebase.",
  // ),
];
