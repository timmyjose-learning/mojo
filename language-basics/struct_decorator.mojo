@fieldwise_init
struct MyPair(Copyable):
    var first: Int
    var second: Int

    def dump(self):
        print(t"({self.first}, {self.second})")


def main():
    var pair = MyPair(100, 200)
    pair.dump()
