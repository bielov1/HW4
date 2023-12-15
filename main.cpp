#include <iostream>
#include "calculator.h"

using namespace std;

int main() {
    Calculator calc;
    cout << "10.0 + 10.0 = " << calc.Add(10.0, 10.0) << "\n";
    cout << "20.2 - 5.0 = " << calc.Sub(20.2, 5.0) << "\n";
}
