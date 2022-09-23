part of 'pages.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          StickyHeader(
            header: Container(
              color: backgroundColor,
              padding: const EdgeInsets.only(left: 46, top: 49, bottom: 5),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    size: 22,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text("The Dark|",
                      style: TextStyle(
                          fontFamily: "Avenir Book",
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 47,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: defaultMargin, top: 20, bottom: 20),
                  child: Text(
                    "Search Result (3)",
                    style: TextStyle(fontFamily: "Avenir Black", fontSize: 20),
                  ),
                ),
                MovieListItem(
                  image: "assets/the_dark2.png",
                  title: "The Dark II",
                  description: "Horror",
                  numStarColor: 4,
                ),
                MovieListItem(
                  image: "assets/the_dark_knight.png",
                  title: "The Dark Knight",
                  description: "Heroes",
                  numStarColor: 5,
                ),
                MovieListItem(
                  image: "assets/the_dark_tower.png",
                  title: "The Dark Tower",
                  description: "Action",
                  numStarColor: 4,
                ),
                const SizedBox(
                  height: 73,
                ),
                Center(
                  child: SizedBox(
                      width: Get.width - (77 + 78),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: buttonColor, // background
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(37),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Suggest Movie",
                          style: TextStyle(
                              fontFamily: "Avenir Book",
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
