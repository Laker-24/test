#include "People.h"//Ҫ����Ҫ�õ���.h�ļ�
#include<iostream>
#include"Date.h"
#include<string>
using namespace std;
People::People(long long number,  const string &name, const string &sex, const string &idcard,const Date &date):p_number(number),p_name(name),p_sex(sex),p_idcard(idcard),p_date(date){}
People::People(const People&P):	p_number(P.p_number),p_name(P.p_name),p_sex(P.p_sex),p_idcard(P.p_idcard),p_date(P.p_date){}
void People::show()
{
	cout<<"��ţ�"<<p_number<<endl;
	cout<<"������"<<p_name<<endl;
	cout<<"�Ա�"<<p_sex<<endl;
	cout<<"���֤�ţ�"<<p_idcard<<endl;
	p_date.show();
}
