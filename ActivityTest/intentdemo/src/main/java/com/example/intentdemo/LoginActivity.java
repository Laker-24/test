package com.example.intentdemo;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;

import com.google.android.material.snackbar.Snackbar;

import java.util.Locale;

public class LoginActivity extends AppCompatActivity {
    private EditText lg_phone,lg_password;
    Button btn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        lg_phone=findViewById(R.id.phone);
        lg_password=findViewById(R.id.password);
        Intent intent = getIntent();
        Bundle bundle = intent.getExtras();
            if (bundle != null) {
                String username = bundle.getString("username","");
                String phone = bundle.getString("phone", "");
                String password = bundle.getString("password", "");
                lg_phone.setText(phone);
                lg_password.setText(password);
                Toast.makeText(this, "用户："+username+"注册成功", Toast.LENGTH_SHORT).show();
            }
            btn=findViewById(R.id.login_btn);
            btn.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    String strPhone=lg_phone.getText().toString().trim();
                    String strPassword=lg_password.getText().toString().trim();
                    if(strPhone.equals("15222223265")&&strPassword.equals("123456")) {
                        Intent intent1 = new Intent(LoginActivity.this, WelcomeActivity.class);
                        startActivity(intent1);
                    }

                }
            });
// 设置为全屏模式（隐藏状态条）
        getWindow().setFlags(
                WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN );
// ActionBar显示返回按钮
        ActionBar actionBar = getSupportActionBar();
        actionBar.setDisplayHomeAsUpEnabled(true);
    }
    //3. 返回按钮的功能
    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        switch ( item.getItemId() ) {
            case android.R.id.home:
                finish();
        }
        return super.onOptionsItemSelected(item);
    }
}