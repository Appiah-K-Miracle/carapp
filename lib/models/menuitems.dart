class Menuitems{
  final String tipNumber;
  final String title;
  final String description;
  
  Menuitems({
    required this.tipNumber,
    required this.title,
    required this.description
});
}

List <Menuitems> items = [
  Menuitems(
      tipNumber: '1',
      title: "Don’t drink and drive ",
      description: "This is the number one rule, DON’T drink and drive. \n\n A significant number of road accidents have been attributed to driving under the influence of alcohol.\n This is because alcohol inhibits your ability to think clearly, which negatively impacts your ability to pay attention and make safe driving choices."
  ),
  Menuitems(
      tipNumber: '2',
      title: "Pull into traffic slowly",
      description: "Stop, Look, Listen before pulling into traffic. \nBe aware of blind spots, including those in rear view mirrors and behind windshield pillars or highway road signs. "
  ),
  Menuitems(
      tipNumber: '3',
      title: "Caution at an Intersection ",
      description: "When making a right-hand turn at an intersection, look both directions at least twice before proceeding.\nVehicles can appear almost out of nowhere very quickly, so exercise caution when pulling into a busy intersection. "
  ),
  Menuitems(
      tipNumber: '4',
      title: "Watch for red light runners",
      description: "Count to three before entering an intersection on a green light. \nLook at both ways and be sure no one is trying to speed through a yellow light.\nExercise caution when passing trailer trucks. Truck drivers have a large blind spot on their right-hand side, so be especially careful when driving next to an 18-wheeler.\nIf you cannot see the truck’s side mirrors, the truck driver cannot see you."
  ),
];