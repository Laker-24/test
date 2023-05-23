package com.example.activitytest;

import android.os.Bundle;
import android.widget.CompoundButton;
import android.widget.Switch;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;

public class SwitchActivity extends AppCompatActivity {
    Switch sw;
    CompoundButton.OnCheckedChangeListener listener = new CompoundButton.OnCheckedChangeListener() {
        @Override
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            switch ( buttonView.getId() ) {
                case R.id.switch1:
                    if ( isChecked ) {
                        AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_YES); // 开启白天主题
                    } else {
                        AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_NO); // 开启夜间主题
                    }
                    break;
            }
        }
    };
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.switch_1);
        sw = (Switch) findViewById(R.id.switch1);
        sw.setOnCheckedChangeListener(listener);
    }
}
