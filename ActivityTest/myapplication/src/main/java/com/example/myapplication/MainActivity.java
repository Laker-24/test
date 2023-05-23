package com.example.myapplication;

//import static com.example.myapplication.R.id.button;

import static com.example.myapplication.R.id.progress_bar;

//import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
//import androidx.appcompat.widget.AppCompatEditText;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
//import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
//import android.widget.EditText;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Toast;
//import java.text.BreakIterator;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    private EditText editText;
    private ProgressBar progressBar;
    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button button=(Button)findViewById(R.id.button);
        editText=(EditText) findViewById(R.id.edit_text);
        button.setOnClickListener(this);
        progressBar=(ProgressBar) findViewById(progress_bar);
    }
    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.button:
//               String inputText=editText.getText().toString();
//                Toast.makeText(MainActivity.this,inputText,
//                        Toast.LENGTH_SHORT).show();
                Intent intent = new Intent(MainActivity.this, Text.class);
                startActivity(intent);
                break;
            default:
                break;
        }
    }
        //Intent intent = new Intent(MainActivity.this, TextViewActivity.class);
//        startActivity(intent);

        /*switch (v.getId()) {
            case R.id.button:
               /*String inputText=editText.getText().toString();
                Toast.makeText(MainActivity.this,inputText,
                        Toast.LENGTH_SHORT).show();
                break;
            default:
                break;
        }
    }
                if (progressBar.getVisibility() == View.GONE) {
                    progressBar.setVisibility(View.VISIBLE);
                } else {
                    progressBar.setVisibility(View.GONE);
                }
                break;
            default:
                break;
        }
    }*/

}