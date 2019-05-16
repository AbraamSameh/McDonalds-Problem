//McDonald's Problem OODP Assignment - 1

import 'dart:io';

//Main Function
main(List<String> arguments) {
  Meal RM1 = Meal_Factory.Prepare_Meal("Regular Meal", "Cheese Burger");
  RM1.Display();

  Meal RM2 = Meal_Factory.Prepare_Meal("Regular Meal", "Double Cheese Burger");
  RM2.Display();

  Meal RM3 = Meal_Factory.Prepare_Meal("Regular Meal", "Mushroom And Swiss Burger");
  RM3.Display();

  Meal CM1 = Meal_Factory.Prepare_Meal("Combo Meal", "Cheese Burger");
  CM1.Display();

  Meal CM2 = Meal_Factory.Prepare_Meal("Combo Meal", "Double Cheese Burger");
  CM2.Display();

  Meal CM3 = Meal_Factory.Prepare_Meal("Combo Meal", "Mushroom And Swiss Burger");
  CM3.Display();

  Meal SCM1 = Meal_Factory.Prepare_Meal("Super Combo Meal", "Cheese Burger");
  SCM1.Display();

  Meal SCM2 = Meal_Factory.Prepare_Meal("Super Combo Meal", "Double Cheese Burger");
  SCM2.Display();

  Meal SCM3 = Meal_Factory.Prepare_Meal("Super Combo Meal", "Mushroom And Swiss Burger");
  SCM3.Display();
}

//Interface In Dart Language
abstract class Ingredient {
  void Display();
}

//Abstract Class In Dart Language
abstract class Bread implements Ingredient {
  @override
  void Display(); //Abstract Function In Dart Language

}

class Lower_Regular_Bun_Bread extends Bread {
  @override
  void Display() {
    print("Lower Regular Bun (Bread)");
  }
}

class Upper_Regular_Bun_Bread extends Bread {
  @override
  void Display() {
    print("Upper Regular Bun (Bread)");
  }
}

class Lower_Artisan_Roll_Bread extends Bread {
  @override
  void Display() {
    print("Lower Artisan Roll (Bread)");
  }
}

class Upper_Artisan_Roll_Bread extends Bread {
  @override
  void Display() {
    print("Upper Artisan Roll (Bread)");
  }
}

//Abstract Class In Dart Language
abstract class Sauce implements Ingredient {
  @override
  void Display(); //Abstract Function In Dart Language
}

class Ketchup_Sauce extends Sauce {
  @override
  void Display() {
    print("Ketchup (Sauce)");
  }
}

class Bistro_Aioli_Sauce extends Sauce {
  @override
  void Display() {
    print("Bistro Aioli (Sauce)");
  }
}

//Abstract Class In Dart Language
abstract class Cheese implements Ingredient {
  @override
  void Display(); //Abstract Function In Dart Language
}

class Swiss_Cheese extends Cheese {
  @override
  void Display() {
    print("Swiss Cheese");
  }
}

class Pasteurized_Process_American_Cheese extends Cheese {
  @override
  void Display() {
    print("Pasteurized Process American Cheese");
  }
}

class Onions implements Ingredient {
  @override
  void Display() {
    print("Onions");
  }
}

class Beef_Patty implements Ingredient {
  @override
  void Display() {
    print("Beef Patty");
  }
}

class Fried_Onion_Strings implements Ingredient {
  @override
  void Display() {
    print("Fried Onion Strings");
  }
}

class Seasoned_Mushrooms implements Ingredient {
  @override
  void Display() {
    print("Seasoned Mushrooms");
  }
}

class Pickle_Slices implements Ingredient {
  @override
  void Display() {
    print("Pickle Slices");
  }
}

//Interface In Dart Language
abstract class Item {
  void Display();
}

//Abstract Class In Dart Language
abstract class Side_Item implements Item {
  @override
  void Display(); //Abstract Function In Dart Language
}

class Fries extends Side_Item {
  @override
  void Display() {
    print("Fries");
  }
}

class Soda extends Side_Item {
  @override
  void Display() {
    print("Soda");
  }
}

//Abstract Class In Dart Language
abstract class Sandwich implements Item {
  String name(); //Abstract Function In Dart Language
  void Prepare_Sandwich(); //Abstract Function In Dart Language

  List<Ingredient> _ingredients =
  new List<Ingredient>(); //Private Member In Dart Language

  void Add_Ingredient(Ingredient ingredient) {
    _ingredients.add(ingredient);
  }

  void Display() {
    print(name() + "\n-Ingredients : ");
    for (Ingredient ingredient in _ingredients) {
      stdout.write("--");
      ingredient.Display();
    }
  }
}

class Cheese_Burger extends Sandwich {
  @override
  String name() {
    return "Cheese Burger Sandwich";
  }

  @override
  void Prepare_Sandwich() {
    Add_Ingredient(new Lower_Regular_Bun_Bread());
    Add_Ingredient(new Beef_Patty());
    Add_Ingredient(new Pasteurized_Process_American_Cheese());
    Add_Ingredient(new Ketchup_Sauce());
    Add_Ingredient(new Pickle_Slices());
    Add_Ingredient(new Onions());
    Add_Ingredient(new Upper_Regular_Bun_Bread());
  }
}

class Double_Cheese_Burger extends Sandwich {
  @override
  String name() {
    return "Double Cheese Burger Sandwich";
  }

  @override
  void Prepare_Sandwich() {
    Add_Ingredient(new Lower_Regular_Bun_Bread());
    Add_Ingredient(new Beef_Patty());
    Add_Ingredient(new Pasteurized_Process_American_Cheese());
    Add_Ingredient(new Beef_Patty());
    Add_Ingredient(new Pasteurized_Process_American_Cheese());
    Add_Ingredient(new Ketchup_Sauce());
    Add_Ingredient(new Pickle_Slices());
    Add_Ingredient(new Onions());
    Add_Ingredient(new Upper_Regular_Bun_Bread());
  }
}

class Mushroom_And_Swiss_Burger extends Sandwich {
  @override
  String name() {
    return "Mushroom And Swiss Burger Sandwich";
  }

  @override
  void Prepare_Sandwich() {
    Add_Ingredient(new Lower_Artisan_Roll_Bread());
    Add_Ingredient(new Beef_Patty());
    Add_Ingredient(new Swiss_Cheese());
    Add_Ingredient(new Seasoned_Mushrooms());
    Add_Ingredient(new Fried_Onion_Strings());
    Add_Ingredient(new Bistro_Aioli_Sauce());
    Add_Ingredient(new Upper_Artisan_Roll_Bread());
  }
}

class Meal_Factory {
  //Static Function In Dart Language
  static Meal Prepare_Meal(String Meal_Type, String Sandwich_Type) {
    if (Meal_Type.toLowerCase() == ("regular meal")) {
      Meal M = new Regular_Meal();
      M.Prepare_Meal(Sandwich_Type);
      return M;
    } else if (Meal_Type.toLowerCase() == ("combo meal")) {
      Meal M = new Combo_Meal();
      M.Prepare_Meal(Sandwich_Type);
      return M;
    } else if (Meal_Type.toLowerCase() == ("super combo meal")) {
      Meal M = new Super_Combo_Meal();
      M.Prepare_Meal(Sandwich_Type);
      return M;
    } else {
      return null;
    }
  }
}

class Sandwich_Factory {
  //Static Function In Dart Language
  static Sandwich Prepare_Sandwich(String Sandwich_Type) {
    if (Sandwich_Type.toLowerCase() == ("cheese burger")) {
      Sandwich S = new Cheese_Burger();
      S.Prepare_Sandwich();
      return S;
    } else if (Sandwich_Type.toLowerCase() == ("double cheese burger")) {
      Sandwich S = new Double_Cheese_Burger();
      S.Prepare_Sandwich();
      return S;
    } else if (Sandwich_Type.toLowerCase() == ("mushroom and swiss burger")) {
      Sandwich S = new Mushroom_And_Swiss_Burger();
      S.Prepare_Sandwich();
      return S;
    } else {
      return null;
    }
  }
}

//Abstract Class In Dart Language
abstract class Meal {
  List<Item> _items = new List<Item>(); //Private Member In Dart Language

  String name(); //Abstract Function In Dart Language
  void Prepare_Meal(String Sandwich_Type); //Abstract Function In Dart Language

  void Add_Item(Item item) {
    _items.add(item);
  }

  void Display() {
    print("------------" + name() + "------------");

    for (Item item in _items) {
      item.Display();
    }
    print("----------------------------------------\n");
  }
}

class Regular_Meal extends Meal {
  @override
  String name() {
    return "--Regular Meal--";
  }

  @override
  void Prepare_Meal(String Sandwich_Type) {
    Add_Item(Sandwich_Factory.Prepare_Sandwich(Sandwich_Type));
  }
}

class Combo_Meal extends Meal {
  @override
  String name() {
    return "---Combo Meal---";
  }

  @override
  void Prepare_Meal(String Sandwich_Type) {
    Add_Item(Sandwich_Factory.Prepare_Sandwich(Sandwich_Type));
    Add_Item(new Fries());
  }
}

class Super_Combo_Meal extends Meal {
  @override
  String name() {
    return "Super Combo Meal";
  }

  @override
  void Prepare_Meal(String Sandwich_Type) {
    Add_Item(Sandwich_Factory.Prepare_Sandwich(Sandwich_Type));
    Add_Item(new Fries());
    Add_Item(new Soda());
  }
}
