package com.example.myapplication;

import java.util.Timer;
import java.util.TimerTask;

public class MyTask extends TimerTask {
    private Timer timer;
    public MyTask(Timer timer){
        this.timer=timer;
    }
    @Override
    public void run() {
        System.out.println("****");
        timer.cancel();
    }
}
