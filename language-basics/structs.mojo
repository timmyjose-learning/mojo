struct MyPair(Copyable):
    var first: Int
    var second: Int

    def __init__(out self, first: Int, second: Int):
        self.first = first
        self.second = second

    # copy constructor
    def __init__(out self, *, copy: Self):
        self.first = copy.first
        self.second = copy.second

    def dump(self):
        print(t"({self.first}, {self.second})")


def main():
    var p1 = MyPair(1, 2)
    p1.dump()
