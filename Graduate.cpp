#include<string>
#include<iostream>
#include"Student.h"
#include"Graduate.h"
using namespace std;
Graduate::Graduate(const Student &S1,string subject,  const Teacher &T):People(S1),Student(S1),G_subject(subject),G_adviser(T){}
Graduate::Graduate(const Graduate&G):People(G),Student(G),G_subject(G.G_subject),G_adviser(G.G_adviser){}
void Graduate::show()
{
	Student::show();
	cout<<"��Ŀ��"<<G_subject<<endl;
	cout<<"��ʦ��"<<"**********"<<endl;
	G_adviser.show();
}
