void main(List<String> args) {
  Dog dog = Dog();
  Cat cat = Cat();

  AnimalSound animalSound = AnimalSound();
  animalSound.makeSound(dog);
  animalSound.makeSound(cat);
}

// Liskov Substitution Principle
// Objects of a superclass shall be replaceable with objects of its subclasses without affecting the functionality of the program.
// In the following example, the Animal class is an abstract class that has a makeSound method.

abstract class Animal {
  void makeSound();
}

// The Dog and Cat classes implement the Animal class and override the makeSound method to make the respective sounds.
class Dog implements Animal {
  @override
  void makeSound() {
    print('Dog barks');
  }
}

class Cat implements Animal {
  @override
  void makeSound() {
    print('Cat meows');
  }
}

// The AnimalSound class has a makeSound method that takes an Animal object as a parameter and calls the makeSound method of the Animal object.
class AnimalSound {
  void makeSound(Animal animal) {
    animal.makeSound();
  }
}
