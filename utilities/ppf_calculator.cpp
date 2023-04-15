#include <iostream>
#include <iomanip>

using namespace std;

int main(int argc, char* argv[])
{
	float amount, tenure, rate;
	cout << "Enter yearly contribution: ";
	// cin >> amount;
	amount = 150000;
	cout << "Enter tenure: ";
	// cin >> tenure;
	tenure = 15;
	cout << "Enter interest rate: ";
	// cin >> rate;
	rate = 7.1;

	float total = amount;
	float interest;
	cout << "\n----------------------------------" << std::endl;
	cout << "|" << setw(6) << "Year" << "|" << setw(12) << "Interest" << "|" << setw(12) << "Total" << "|" << std::endl;
	cout << "----------------------------------" << std::endl;

	std::cout << std::fixed;
    std::cout << std::setprecision(2);

	for (int i = 1; i <= tenure; i++)
	{
		interest =  (total * rate)/100;
		total += interest;
		cout << "|" <<setw(6) << i << "|" << setw(12) << interest << "|" << setw(12) << (total + interest) << "|" << std::endl;
		cout << "----------------------------------" << std::endl;
		total += amount;
	}

	/**
	F = P [({(1+i) ^n}-1)/i]
	*/


	return 0;
}
