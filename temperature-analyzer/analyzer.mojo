from std.python import Python, PythonObject
from std.python.numpy import copy_to_numpy_array


def calc_avg_temp(temps: List[Float64]) raises -> Float64:
    if len(temps) == 0:
        raise Error("empty temperature list supplied")

    var total = 0.0
    for temp in temps:
        total += temp
    return total / Float64(len(temps))


def main():
    print("Temperarure analyzer")

    var temps: List[Float64] = [30.0, 31.2, 29.8, 33.4, 31.9, 32.3]

    print(t"We have {len(temps)} temperature readings")
    for index in range(len(temps)):
        print(t"Temperature {index + 1}: {temps[index]}")

    try:
        var avg = calc_avg_temp(temps)
        print(t"Average temperature: {round(avg, 2)}")

        if avg >= 30.0:
            print("Hot week")
        elif avg >= 25.0:
            print("Warm week")
        else:
            print("Normal week")

        var np = Python.import_module("numpy")
        var pytemps = copy_to_numpy_array(temps)
        var std_dev = np.std(pytemps)
        print(t"Standard deviation: {std_dev}")
    except e:
        print("Error: ", e)
