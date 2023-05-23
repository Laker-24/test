#ifndef _GRADUATE_H_
#define _GRADUATE_H_
#include"Student.h"
#include"Teacher.h"
#include<string>
using namespace std;
// //专业subject、导师adviser
class Graduate:public Student
{
	public:
		Graduate( const Student &S1, string subject,const Teacher &T);
		Graduate(const Graduate&G);
		void show();
		~Graduate(){}
	protected:
	string G_subject;
	Teacher G_adviser;
};
#endif
