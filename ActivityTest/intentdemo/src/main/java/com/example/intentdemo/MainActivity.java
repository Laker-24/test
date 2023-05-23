package com.example.intentdemo;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.resource.bitmap.CircleCrop;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.request.RequestOptions;

public class MainActivity extends AppCompatActivity {
    Button btn1,btn2,btn3;
    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btn1 = findViewById(R.id.button1);
        btn2 = findViewById(R.id.button2);
        btn3 = findViewById(R.id.button3);
        btn1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent1 = new Intent( MainActivity.this, LoginActivity.class );//登录界面
                startActivity(intent1);
            }
        });
        btn2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent2 = new Intent(MainActivity.this,SpinnerActivity.class);
                startActivity(intent2);
            }
        });
        btn3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent3=new Intent();//返回Home界面
                intent3.setAction(Intent.ACTION_MAIN);
                intent3.addCategory(Intent.CATEGORY_HOME);
                startActivity(intent3);
            }
        });
    }

}