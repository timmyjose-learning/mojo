def repeat[count: Int](s: String):
    comptime for i in range(1, count + 1):
        print(t"Hello {i}")


def main():
    repeat[5]("Syzygy")
