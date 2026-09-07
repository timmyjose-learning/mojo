def main() raises:
    var name: String

    print("What is your name?")
    name = input()
    print(greet(name))


def greet(name: String) -> String:
    return "Hello, " + name
