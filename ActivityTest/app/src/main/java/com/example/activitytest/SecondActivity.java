package com.example.activitytest;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
//import android.view.View;
import android.widget.Button;

public class SecondActivity extends AppCompatActivity {

    @Override
    public void onBackPressed() {
        Intent intent = new Intent();
        intent.putExtra("data_return","Hello FirstActivity");
        setResult(RESULT_OK,intent);
        finish();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.second_layout);
        Button button2;
        button2 = findViewById(R.id.button_2);
        button2.setOnClickListener(v -> {
            Intent intent=new Intent();
            intent.putExtra("data_return","Hello FirstActivity");
            setResult(RESULT_OK,intent);
            finish();
        });
    }
}