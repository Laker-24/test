#include"Date.h"
#include<iostream>
using namespace std;
Date::Date(int y,int m,int d):year(y),month(m),day(d)
{
}
inline void Date:: getin()
{
cin>>year>>month>>day;
}
void Date::show()
{
	cout<<"出生日期："<<year<<"-"<<month<<"-"<<day<<endl;
}
Date::Date(const Date &D):year(D.year),month(D.month),day(D.day) {}
