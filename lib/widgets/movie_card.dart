// ignore_for_file: must_be_immutable

part of 'widgets.dart';

class MovieCard extends StatelessWidget {
  String image;
  String title;
  String description;
  int numStarColor;
  MovieCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.numStarColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width - 75,
      height: 282,
      margin: const EdgeInsets.only(left: defaultMargin),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 207,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image,
                    ))),
          ),
          const SizedBox(
            height: 19,
          ),
          Expanded(
            child: Stack(
              children: [
                Text(title,
                    style: const TextStyle(
                        fontFamily: "Avenir Black",
                        fontSize: 20,
                        fontWeight: FontWeight.w200)),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                Padding(
                  padding: const EdgeInsets.only(top: 31),
                  child: Text(description,
                      style: const TextStyle(
                          fontFamily: "Avenir Book",
                          fontSize: 16,
                          color: greyColor)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
