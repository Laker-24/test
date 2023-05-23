#ifndef _DATE_H_
#define _DATE_H_
class Date//Date类
{
	public:
		Date(int y=2001,int m=4,int d=2);//有参构造与默认构造和一
		Date( const Date &D);//复制构造
		void getin();//设置时间
		void show();//展示时间
		~Date(){} //析构函数
	private:
		int year,month,day;
};
#endif
