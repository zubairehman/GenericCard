import 'package:flutter/material.dart';

class GenericCard extends StatefulWidget {
  GenericCard(
      {Key key,
      this.title,
      this.subtitle,
      this.body,
      this.flatButtons,
      this.iconButtons,
      this.imagePath,
      this.imageHeight = 194.0})
      : super(key: key);

  //variables
  final String title;
  final String subtitle;
  final String body;
  final String imagePath;
  final double imageHeight;
  final List<FlatButton> flatButtons;
  final List<IconButton> iconButtons;

  @override
  _GenericCardState createState() => _GenericCardState();
}

class _GenericCardState extends State<GenericCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipRRect(
              borderRadius: new BorderRadius.only(
                  topRight: Radius.circular(4.0),
                  topLeft: Radius.circular(4.0)),
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.cover,
                height: widget.imageHeight,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            ListTile(
              title: Text(widget.title),
              subtitle: Text(widget.subtitle),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Text(
                widget.body,
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .copyWith(color: Colors.grey[600]),
              ),
            ),
            Row(
              children: [
                Row(children: widget.flatButtons),
                Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: widget.iconButtons)),
              ],
            )
          ],
        ),
      ),
    );
    ;
  }
}
