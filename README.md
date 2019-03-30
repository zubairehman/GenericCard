# flutter_app

A re-usable ui.card widget so that you can import and use it everywhere in the app without putting up the layout again and again.

## Getting Started

One way or another you may want to display some “items”, be it an album, an e-commerce product, social media feed, with a title, a subtitle, few lines of body text, and of course an image. Unlike other Flutter widgets such as AppBar, CheckBoxTile, SwitchTile, for which you can have neat layouts ready-made, Card widget only gives you “a rectangle with elevation”. You need to figure out your way to put things in it beautifully. Material Components Web’s catalogue page gives us 5 different layers to reference from. This widget hs been designed to keep provided material guidlines in mind.

## Usage

```
GenericCard(
  imagePath: 'assets/images/image.jpg',
  title: 'Flutter Demo Card',
  subtitle: 'by Zubair Rehman',
  body:
      'Visit ten places on our planet that are undergoing the biggest changes today.',
  flatButtons: [
    FlatButton(
      child: Text(
        'First Button',
        style: Theme.of(context)
            .textTheme
            .button
            .copyWith(color: Colors.blueAccent),
      ),
      onPressed: () {},
    ),
    FlatButton(
      child: Text(
        'Second Button',
        style: Theme.of(context)
            .textTheme
            .button
            .copyWith(color: Colors.blueAccent),
      ),
      onPressed: () {},
    ),
  ],
  iconButtons: [
    IconButton(
      icon: Icon(Icons.assignment),
      color: Colors.grey[500],
      iconSize: 24.0,
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Icons.email),
      color: Colors.grey[500],
      iconSize: 24.0,
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Icons.more_vert),
      color: Colors.grey[500],
      iconSize: 24.0,
      onPressed: () {},
    ),
  ],
)
```

![Screenshot](https://github.com/zubairehman/GenericCard/blob/master/assets/images/Simulator%20Screen%20Shot%20-%20iPhone%20X%CA%80%20-%202019-03-31%20at%2000.30.23.png)
