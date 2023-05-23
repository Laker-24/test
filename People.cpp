#include "People.h"//要包含要用到的.h文件
#include<iostream>
#include"Date.h"
#include<string>
using namespace std;
People::People(long long number,  const string &name, const string &sex, const string &idcard,const Date &date):p_number(number),p_name(name),p_sex(sex),p_idcard(idcard),p_date(date){}
People::People(const People&P):	p_number(P.p_number),p_name(P.p_name),p_sex(P.p_sex),p_idcard(P.p_idcard),p_date(P.p_date){}
void People::show()
{
	cout<<"编号："<<p_number<<endl;
	cout<<"姓名："<<p_name<<endl;
	cout<<"性别："<<p_sex<<endl;
	cout<<"身份证号："<<p_idcard<<endl;
	p_date.show();
}
