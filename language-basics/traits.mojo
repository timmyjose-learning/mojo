trait SomeTrait:
    def required_method(self, x: Int):
        ...


@fieldwise_init
struct SomeStruct(SomeTrait):
    def required_method(self, x: Int):
        print("Hello, your token is ", x)


def fun_with_traits[T: SomeTrait](x: T):
    x.required_method(100)


def main():
    var s1 = SomeStruct()
    s1.required_method(42)

    var s2 = SomeStruct()
    fun_with_traits(s2)
