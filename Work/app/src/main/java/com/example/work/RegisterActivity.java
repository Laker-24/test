package com.example.work;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.work.Dao.UserDao;
import com.example.work.db.AppDatabase;
import com.example.work.entity.User;

public class RegisterActivity extends AppCompatActivity {

    private EditText s_username,s_password,s_phone,s_card;
    Bundle bundle;
    Boolean canreg=false,flag=false;
    String list="1234567890";
    String list1="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    Button btn1;
    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);
        s_username=findViewById(R.id.username);
        s_password=findViewById(R.id.password);
        s_phone=findViewById(R.id.phone);
        s_card=findViewById(R.id.card);
        bundle=new Bundle();
        canreg=false;
        btn1=findViewById(R.id.button1);
        btn1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (!TextUtils.isEmpty(s_username.getText()) && !TextUtils.isEmpty(s_password.getText().toString())) {
                    if (s_password.getText().toString().length() < 8) {
                        canreg = false;
                    } else {
                        for (int i = 0; i <= list.length(); i++) {
                            if (s_password.getText().toString().indexOf(list.substring(i, i)) != -1) {
                                canreg = true;
                                break;
                            } else {
                                canreg = true;
                            }
                        }
                        for (int i = 0; i <= list1.length(); i++) {
                            if (s_password.getText().toString().indexOf(list1.substring(i, i)) != -1) {
                                canreg = true;
                                break;
                            } else {
                                canreg = false;
                            }
                        }
                    }
//                    if(s_phone.getText().toString().length()<11&&s_card.getText().toString().length()<18){
//                        flag=false;
//                    }
//                    if(!flag){
//                        Toast.makeText(getApplicationContext(),"手机号身份证号不能为空",Toast.LENGTH_LONG).show();
//                    }
                    if (canreg) {
                        String username = s_username.getText().toString();
                        String password = s_password.getText().toString();
                        UserDao userDao = AppDatabase.getINSTANCE(RegisterActivity.this).getuserDao();
                        User user = userDao.findUser(username, password);
                        if (user != null) {
                            Toast.makeText(getApplicationContext(), "用户名已存在", Toast.LENGTH_LONG).show();
                        } else {
                            String s_username = ((EditText) findViewById(R.id.username)).getText().toString();
                            String s_password = ((EditText) findViewById(R.id.password)).getText().toString();
                            Intent intent = new Intent(RegisterActivity.this, MainActivity.class);
                            bundle.putString("username", s_username);
                            bundle.putString("password", s_password);
                            intent.putExtras(bundle);
                            userDao.insert(new User(username, password));
                            Toast.makeText(getApplicationContext(), "注册成功", Toast.LENGTH_LONG).show();
                            startActivity(intent);
                        }
                    } else {
                        Toast.makeText(getApplicationContext(), "密码必须八位并包含数字和英文字母", Toast.LENGTH_LONG).show();
                    }
                } else {
                    Toast.makeText(getApplicationContext(), "用户名密码不能为空", Toast.LENGTH_LONG).show();
                }
                if (!TextUtils.isEmpty(s_phone.getText()) && !TextUtils.isEmpty(s_card.getText().toString())) {

                } else {
                    Toast.makeText(getApplicationContext(), "手机号身份证号不能为空", Toast.LENGTH_LONG).show();
                }
            }
        });

    }

}
