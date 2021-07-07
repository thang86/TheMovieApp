import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movieapp/utils/dimens.dart';

class MovieInformationWidget extends StatelessWidget {
  const MovieInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: m25Size),
      child: Column(
        children: <Widget>[
          _buildMovieInfo(),
          SizedBox(
            height: m15Size,
          ),
          _buildDumyGenre(),
        ],
      ),
    );
  }

  Widget _buildDumyGenre() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        _buildmGenreItem(),
        _buildmGenreItem(),
        _buildmGenreItem(),
      ],
    );
  }

  Widget _buildmGenreItem() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: m6Size),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(m20Size),
      ),
      child: ElevatedButton(
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(m20Size),
          ),
          padding: EdgeInsets.symmetric(horizontal: m30Size, vertical: m8Size),
          side: BorderSide(color: Colors.grey.withOpacity(0.3)),
          primary: Colors.white,
        ),
        child: Text(
          "Active",
          style: TextStyle(fontSize: m14Size),
        ),
      ),
    );
  }

  Widget _buildMovieInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  "Ford v Ferrari",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: m30Size),
                ),
              ),
              SizedBox(
                height: m10Size,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "2019",
                      style: TextStyle(
                          color: Color(0xFF9A9BB2), fontSize: m14Size),
                    ),
                    SizedBox(
                      width: m30Size,
                    ),
                    Text(
                      "PG-13",
                      style: TextStyle(
                          color: Color(0xFF9A9BB2), fontSize: m14Size),
                    ),
                    SizedBox(
                      width: m30Size,
                    ),
                    Text(
                      "2h 32 min",
                      style: TextStyle(
                          color: Color(0xFF9A9BB2), fontSize: m14Size),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          width: m64Size,
          height: m64Size,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xFFFE6D8E),
            borderRadius: BorderRadius.all(
              Radius.circular(m20Size),
            ),
          ),
          child: FaIcon(
            Icons.add,
            size: m30Size,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
