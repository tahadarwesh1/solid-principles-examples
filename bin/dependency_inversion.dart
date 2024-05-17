void main(List<String> args) {
  LightBulb lightBulb = LightBulb();
  Switch switchButton = Switch(lightBulb);

  switchButton.turnOn();
  switchButton.turnOff();

  Fan fan = Fan();
  switchButton = Switch(fan);

  switchButton.turnOn();
  switchButton.turnOff();
  
}

// Dependency Inversion Principle
// High-level modules should not depend on low-level modules. Both should depend on abstractions. Abstractions should not depend on details. Details should depend on abstractions.
//! before applying the Dependency Inversion Principle
/*
class LightBulb {
  void turnOn() {
    print('LightBulb: turned on...');
  }

  void turnOff() {
    print('LightBulb: turned off...');
  }
}

class Switch {
  LightBulb lightBulb;

  Switch(this.lightBulb);

  void turnOn() {
    lightBulb.turnOn();
  }

  void turnOff() {
    lightBulb.turnOff();
  }
}
*/

//* after applying the Dependency Inversion Principle
abstract class Switchable {
  void turnOn();
  void turnOff();
}

class LightBulb implements Switchable {
  @override
  void turnOn() {
    print('LightBulb: turned on...');
  }

  @override
  void turnOff() {
    print('LightBulb: turned off...');
  }
}

class Switch {
  Switchable switchable;

  Switch(this.switchable);

  void turnOn() {
    switchable.turnOn();
  }

  void turnOff() {
    switchable.turnOff();
  }
}

// The Switch class now depends on the Switchable interface, which is an abstraction. The LightBulb class implements the Switchable interface. This way, the Switch class does not depend on the LightBulb class directly. The Switch class can work with any class that implements the Switchable interface. This is the Dependency Inversion Principle in action.

// The Dependency Inversion Principle is a way to decouple high-level modules from low-level modules. It allows for more flexibility and easier maintenance of the codebase. By depending on abstractions rather than concrete implementations, the code becomes more modular and easier to test and maintain.

class Fan implements Switchable {
  @override
  void turnOn() {
    print('Fan: turned on...');
  }

  @override
  void turnOff() {
    print('Fan: turned off...');
  }
}