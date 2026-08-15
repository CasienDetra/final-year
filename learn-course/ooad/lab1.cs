using System;

public class Dog {
  private string name;
  private string breed;

  public Dog() {}

  public Dog(string name, string breed) {
    this.name = name;
    this.breed = breed;
  }

  public string Name {
    get { return this.name; }
    set { this.name = value; }
  }

  public string Breed {
    get { return this.breed; }
    set { this.breed = value; }
  }

  public void SayBau() {
    Console.WriteLine("{0} said: Bauuuuuu!", this.name ?? "[unnamed dog]");
  }
}

public class Program {
  static void Main(string[] args) {
    Console.WriteLine("Enter first dog's name:");
    string dogName = Console.ReadLine();

    Console.WriteLine("Enter first dog's breed:");
    string dogBreed = Console.ReadLine();

    // Use the constructor
    Dog firstDog = new Dog(dogName, dogBreed);

    // Use the parameterless constructor
    Dog secondDog = new Dog();

    Console.WriteLine("Enter second dog's name:");
    secondDog.Name = Console.ReadLine();

    Console.WriteLine("Enter second dog's breed:");
    secondDog.Breed = Console.ReadLine();

    Console.WriteLine();

    firstDog.SayBau();
    secondDog.SayBau();
  }
}
