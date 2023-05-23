package com.example.myapplication;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import java.util.Calendar;
import java.util.Objects;
import java.util.TimeZone;
import java.util.Timer;
import java.util.TimerTask;

public class Text extends AppCompatActivity {

    private Timer timer;
    private TimerTask task;
    private TextView showHour,showMinute,showAm,showSecond,showDay,showDate;
    Calendar cal;

    public void init() {
        timer = new Timer();
        String[] weeks = {"周日","周一","周二","周三","周四","周五","周六"};

        showHour = findViewById(R.id.textView1);
        showMinute= findViewById(R.id.textView_1);
        showAm = findViewById(R.id.textView2);
        showSecond = findViewById(R.id.textView3);
        showDay = findViewById(R.id.textView4);
        showDate = findViewById(R.id.textView5);

        //设置系统时区
        TimeZone.setDefault(TimeZone.getTimeZone("Asia/Shanghai"));

        task = new TimerTask() {
            @Override
            public void run() {
                runOnUiThread(new Runnable() {
                    @SuppressLint("DefaultLocale")
                    @Override
                    public void run() {
                        cal = Calendar.getInstance();
                        showHour.setText(String.format("%02d",cal.get(Calendar.HOUR_OF_DAY))
                        );
                        showMinute.setText(String.format("%02d",cal.get(Calendar.MINUTE))
                        );
                        showAm.setText(cal.get(Calendar.AM_PM)== Calendar.AM ?"AM":"PM" //判断当前时间是上午还是下午----0为上午，1为下午
                        );
                        showSecond.setText(String.format("%02d",cal.get(Calendar.SECOND))
                        );
                        showDay.setText(weeks[cal.get(Calendar.DAY_OF_WEEK) - 1]//获取对应日期是该周的第几天
                        );
                        showDate.setText(String.format("%4d/%d/%d",cal.get(Calendar.YEAR),cal.get(Calendar.MONTH)+1,cal.get(Calendar.DATE)) //获取对应日期的月份,月份从0开始,故为cal.get(Calendar.MONTH)+1
                        );
                    }

                });//end runOnUiThread
            }
        };
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.text);
        init();
        timer.schedule(task,0,1000);

        ActionBar actionBar = getSupportActionBar(); //获取ActionBar
        Objects.requireNonNull(actionBar).setTitle("Clock");
    }
}