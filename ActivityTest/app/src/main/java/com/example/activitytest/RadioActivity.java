package com.example.activitytest;

import android.os.Bundle;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

public class RadioActivity extends AppCompatActivity {
    RadioGroup rg;
    RadioGroup.OnCheckedChangeListener listener=new RadioGroup.OnCheckedChangeListener() {
        @Override
        public void onCheckedChanged(RadioGroup group, int checkedId) {
            RadioButton rb = findViewById(checkedId);
            String answer = rb.getText().toString();
            if( answer.equals("赵匡胤") )
                Toast.makeText(RadioActivity.this,"答对了",Toast.LENGTH_SHORT).show();
            else
                Toast.makeText(RadioActivity.this,"答错了",Toast.LENGTH_SHORT).show();
        }
    };
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.radio);
        rg= findViewById(R.id.radioGroup);
        rg.setOnCheckedChangeListener(listener);
    }
}