#include <iostream>
extern "C" int mmxadd(int a, int b);
extern "C" int mmxsub(int a, int b);
extern "C" int mmxmul(int a, int b);
extern "C" int mmxdiv(double a, double b);

int main()
{
	int resultadd = mmxadd(5,2);
	int resultsub = mmxsub(25,14);
	int resultmul = mmxmul(7,5);
	int resultdiv = mmxdiv(10.0,2.0);
	std::cout << resultadd << std::endl;
	std::cout << resultsub << std::endl;
	std::cout << resultmul << std::endl;
	std::cout << resultdiv << std::endl;
	system("PAUSE");
	return 0;
}
