// ignore_for_file: must_be_immutable

part of 'widgets.dart';

class MovieListItem extends StatelessWidget {
  String image;
  String title;
  String description;
  int numStarColor;
  int num = 5;

  MovieListItem(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.numStarColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127,
      width: Get.width - 40,
      margin: const EdgeInsets.only(left: defaultMargin, bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 127,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image,
                    ))),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: defaultMargin, top: 18),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontFamily: "Avenir Black", fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: defaultMargin, top: 4),
                  child: Text(
                    description,
                    style: const TextStyle(
                        fontFamily: "Avenir Book",
                        fontSize: 16,
                        color: greyColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: defaultMargin, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        size: 18,
                        color: (numStarColor >= 1) ? starColor : greyStarColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 18,
                        color: (numStarColor >= 2) ? starColor : greyStarColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 18,
                        color: (numStarColor >= 3) ? starColor : greyStarColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 18,
                        color: (numStarColor >= 4) ? starColor : greyStarColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 18,
                        color: (numStarColor >= 5) ? starColor : greyStarColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
