#include <chrono>
#include <iostream>
#include <thread>

extern "C" int mmxadd(int a[], int b[]);
extern "C" int mmxsub(int a[], int b[]);

int main()
{
	int a[] = { 1, 2, 3, 4, 5 };
	int b[] = { 1, 2, 3, 4, 5 };
	auto starttime = std::chrono::steady_clock::now();
	mmxadd(a, b);
	//std::this_thread::sleep_for(std::chrono::nanoseconds(2));
	auto endtime = std::chrono::steady_clock::now();
	auto elapsed = std::chrono::duration_cast<std::chrono::nanoseconds>(endtime - starttime);
	std::cout << "The Add Function took " << (double) elapsed.count()<< std::endl;
	system("PAUSE");
	return 0;
}
