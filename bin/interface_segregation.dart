void main(List<String> args) {
  Human human = Human();
  Robot robot = Robot();

  human.work();
  human.eat();

  robot.work();
}

// Interface Segregation Principle
// A client should never be forced to implement an interface that it does not use or clients should not be forced to depend on methods they do not use.

//! before applying the Interface Segregation Principle
/*
abstract class Worker {
  void work();
  void eat();
}

class Human implements Worker {
  @override
  void work() {
    print('Human is working');
  }

  @override
  void eat() {
    print('Human is eating');
  }
}

class Robot implements Worker {
  @override
  void work() {
    print('Robot is working');
  }

  @override
  void eat() {
    // Robots do not eat
    throw UnimplementedError();
  }
}
*/

//* after applying the Interface Segregation Principle
abstract class Worker {
  void work();
}

abstract class Eater {
  void eat();
}

class Human implements Worker, Eater {
  @override
  void work() {
    print('Human is working');
  }

  @override
  void eat() {
    print('Human is eating');
  }
}

class Robot implements Worker {
  @override
  void work() {
    print('Robot is working');
  }
}
