part of 'pages.dart';

class MovieHome extends StatelessWidget {
  const MovieHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          StickyHeader(
            header: Container(
              color: backgroundColor,
              padding: const EdgeInsets.only(
                  left: defaultMargin, top: 29, bottom: 5),
              child: Stack(
                children: [
                  const Text("Moviez",
                      style:
                          TextStyle(fontFamily: "Avenir Black", fontSize: 28)),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      iconSize: 22,
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      onPressed: () {
                        Get.to(const SearchPage());
                      },
                      icon: const Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text('Watch much easier',
                        style: TextStyle(
                            fontFamily: "Avenir Book",
                            fontSize: 16,
                            color: greyColor)),
                  ),
                ],
              ),
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                    height: 282,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MovieCard(
                          image: "assets/john_wick.png",
                          title: "John Wick 4",
                          description: "Action, crime",
                          numStarColor: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: defaultMargin),
                          child: MovieCard(
                            image: "assets/bohemian.png",
                            title: "Bohemian",
                            description: "Documentary",
                            numStarColor: 3,
                          ),
                        ),
                      ],
                    )),
                const Padding(
                  padding:
                      EdgeInsets.only(left: defaultMargin, top: 30, bottom: 20),
                  child: Text(
                    "From Disney",
                    style: TextStyle(fontFamily: "Avenir Black", fontSize: 24),
                  ),
                ),
                MovieListItem(
                  image: "assets/mulan_session.png",
                  title: "Mulan Session",
                  description: "History, war",
                  numStarColor: 3,
                ),
                MovieListItem(
                  image: "assets/beauty_best.png",
                  title: "Beauty & Beast",
                  description: "Sci-Fiction",
                  numStarColor: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
