package com.example.intentdemo;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

public class TableActivity extends AppCompatActivity {
   View.OnClickListener listener = new View.OnClickListener() {
       @Override
       public void onClick(View view) {
           boolean checked = ((RadioButton)view).isChecked();
           switch (view.getId()){
               case R.id.male:
                   if(checked)
                       Toast.makeText(getApplicationContext(),"选中男",Toast.LENGTH_SHORT).show();
                   break;
               case R.id.female:
                   if(checked)
                       Toast.makeText(getApplicationContext(),"选中女",Toast.LENGTH_SHORT).show();
                   break;
           }
       }
   };
    @Override
     protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_table);
        RadioButton btn1=(RadioButton) findViewById(R.id.female);
        RadioButton btn2 = (RadioButton) findViewById(R.id.male);
        btn1.setOnClickListener(listener);
        btn2.setOnClickListener(listener);
    }

}
