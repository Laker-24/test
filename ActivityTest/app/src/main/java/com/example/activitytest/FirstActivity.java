package com.example.activitytest;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
//import android.view.View;
//import android.view.View;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class FirstActivity extends AppCompatActivity {

    @SuppressLint("NonConstantResourceId")
    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        switch(item.getItemId()){
            case R.id.add_item:
                Toast.makeText(this,"You clicked Add",Toast.LENGTH_SHORT).show();
                break;
            case R.id.remove_item:
                Toast.makeText(this,"You clicked Remove",Toast.LENGTH_SHORT).show();
                break;
            default:
        }
        return true;
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main,menu);
        return true;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.first_layout);
        Log.d("FirstActivity","onCreate execute");
        Button button1= findViewById(R.id.button_1);
        button1.setOnClickListener(this::onClick);

    }

    private void onClick(View v) {
        Intent intent = new Intent(FirstActivity.this, SecondActivity.class);
        startActivityForResult(intent, 1);
    }
    @Override
    protected void onActivityResult(int requestCode,int resultCode,Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1) {
            if (resultCode == RESULT_OK) {
                String returnedData = data.getStringExtra("data_return");
                Log.d("FirstActivity", returnedData);
            }
        }
    }
}/*Toast.makeText(FirstActivity.this,"You clicked Button 1",
        Toast.LENGTH_SHORT).show();*/