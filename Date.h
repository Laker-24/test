#ifndef _DATE_H_
#define _DATE_H_
class Date//Date��
{
	public:
		Date(int y=2001,int m=4,int d=2);//�вι�����Ĭ�Ϲ����һ
		Date( const Date &D);//���ƹ���
		void getin();//����ʱ��
		void show();//չʾʱ��
		~Date(){} //��������
	private:
		int year,month,day;
};
#endif
