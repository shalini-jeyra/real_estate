part of styles;

class AppBorder {
  static final Decoration appDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: Colors.white,
  );
  static final Decoration buttonDecoration = BoxDecoration(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(30),
      topLeft: Radius.circular(30),
    ),
    image: DecorationImage(
      image: NetworkImage(
        'https://images.unsplash.com/photo-1605545258459-f10109449620?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80',
      ),
      fit: BoxFit.fill,
    ),
  );
}

class ButtonBorder {
  static final Decoration appDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(13.0),
      color: Color.fromARGB(255, 0, 91, 74));
  static final Decoration buttonDecoration = BoxDecoration(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(30),
        topLeft: Radius.circular(30),
      ),
      color: Color.fromARGB(255, 0, 91, 74));
}
