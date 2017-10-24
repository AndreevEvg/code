#include <iostream>
using namespace std;

int main(){

  double gallons;
  double liters;

  cout << "Введите количество галлонов: ";
  cin >> gallons;

  liters = gallons * 3.7854;

  cout << "Литров: " << liters << "\n";

  return 0;
}
