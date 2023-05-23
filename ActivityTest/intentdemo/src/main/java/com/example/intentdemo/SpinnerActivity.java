package com.example.intentdemo;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.method.ReplacementTransformationMethod;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageSwitcher;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultCaller;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.google.android.material.snackbar.Snackbar;

import org.xmlpull.v1.XmlPullParser;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

public class SpinnerActivity extends AppCompatActivity implements View.OnClickListener {

    Button btn2;
    private EditText password;
    private ImageView imageView;
    private boolean flag=true;
    private HideReturnsTransformationMethod method_show;
    Spinner sp_province;
    Spinner sp_city;
    Spinner sp_area;
    List<String> provinceList = new ArrayList<String>(Arrays.asList("选择省", "湖北省", "湖南省", "北京", "天津", "上海"));
    List<String> cityList = new ArrayList<String>(Arrays.asList("选择市"));
    List<String> areaList = new ArrayList<String>(Arrays.asList("选择区"));
    ArrayAdapter<String> adapter;
    public void setAdapter(Spinner spinner, List<String> list) { //封装一下
        adapter = new ArrayAdapter<String>(SpinnerActivity.this, android.R.layout.simple_list_item_1, list);
        spinner.setAdapter(adapter);
    }

    public void initView() {
        sp_province = (Spinner) findViewById(R.id.sp_province);
        sp_city = (Spinner) findViewById(R.id.sp_city);
        sp_area = (Spinner) findViewById(R.id.sp_area);
        setAdapter(sp_province, provinceList);
        setAdapter(sp_city, cityList);
        setAdapter(sp_area, cityList);
        sp_province.setOnItemSelectedListener(listener);
    }

    private AdapterView.OnItemSelectedListener listener = new AdapterView.OnItemSelectedListener() {
        @Override
        public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
            if (parent.getId() == R.id.sp_province) { //判断是哪个spinner被选中
                String pName = parent.getSelectedItem().toString(); //省份名
                switch (pName) {
                    case "选择省":
                        cityList.clear(); //先清空，再添加
                        cityList.add("选择市");
                        break;
                    case "湖北省":
                        cityList.clear();
                        cityList.add("武汉市");
                        cityList.add("宜昌市");
                        break;
                    case "湖南省":
                        cityList.clear();
                        cityList.add("长沙市");
                        cityList.add("湘潭市");
                        break;
                    case"北京":
                        cityList.clear();
                        cityList.add("北京市");
                        break;
                    case"天津":
                        cityList.clear();
                        cityList.add("天津市");
                        break;
                    case"上海":
                        cityList.clear();
                        cityList.add("上海市");
                        break;
                }
                setAdapter(sp_city, cityList); //加载新数据
                sp_city.setOnItemSelectedListener(listener);
            } else if ( parent.getId() == R.id.sp_city ) {
                String cName = parent.getSelectedItem().toString();//市名
                switch (cName) {
                    case"选择区":
                        areaList.clear();
                        areaList.add("选择区");
                        break;
                    case "武汉市":
                        areaList.clear();
                        areaList.add("洪山区");
                        areaList.add("江汉区");
                        areaList.add("武昌区");
                        break;
                    case "宜昌市":
                        areaList.clear();
                        areaList.add("西陵区");
                        areaList.add("夷陵区");
                        break;
                    case"长沙市":
                        areaList.clear();
                        areaList.add("芙蓉区");
                        areaList.add("天心区");
                        areaList.add("岳麓区");
                        break;
                    case"湘潭市":
                        areaList.clear();
                        areaList.add("雨湖区");
                        areaList.add("岳塘区");
                        break;
                    case"北京市":
                        areaList.clear();
                        areaList.add("朝阳区");
                        areaList.add("海淀区");
                        areaList.add("门头沟区");
                        break;
                    case"天津市":
                        areaList.clear();
                        areaList.add("和平区");
                        areaList.add("南开区");
                        areaList.add("滨海新区");
                        break;
                    case"上海市":
                        areaList.clear();
                        areaList.add("黄浦区");
                        areaList.add("徐汇区");
                        areaList.add("浦东新区");
                        break;
                }
                setAdapter(sp_area, areaList);
                sp_area.setOnItemSelectedListener(listener);
            }else if(parent.getId()==R.id.sp_area){
                Toast.makeText(SpinnerActivity.this, "选中的是：" + sp_province.getSelectedItem() +
                        sp_city.getSelectedItem()+sp_area.getSelectedItem(), Toast.LENGTH_SHORT).show();
            }

        }
        @Override
        public void onNothingSelected(AdapterView<?> parent) {

        }
    };
    @SuppressLint({"MissingInflatedId", "WrongViewCast"})
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);
        password = findViewById(R.id.password);
        imageView = findViewById(R.id.show_pwd);
        imageView.setOnClickListener(this);
        btn2 = findViewById(R.id.button2);
        initView();
        btn2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String s_username = ((EditText)findViewById(R.id.username)).getText().toString();
                String s_phone = ((EditText) findViewById(R.id.phone)).getText().toString();
                String s_password = ((EditText) findViewById(R.id.password)).getText().toString();
                Timer timer = new Timer();
                TimerTask timerTask = new TimerTask() {
                    @Override
                    public void run() {
                        Intent intent = new Intent(SpinnerActivity.this, LoginActivity.class);
                        Bundle bundle = new Bundle();
                        SharedPreferences sp = getSharedPreferences("mydata", Context.MODE_PRIVATE);
                        SharedPreferences.Editor editor=sp.edit();
                        editor.putString("username",s_username);
                        editor.apply();
                        bundle.putString("username",s_username);
                        bundle.putString("phone", s_phone);
                        bundle.putString("password", s_password);
                        intent.putExtras(bundle);
                        startActivity(intent);
                    }
                };
                timer.schedule(timerTask,2000);
            }
        });
    }
    @Override
    public void onClick(View v) {
        switch(v.getId()) {
            case R.id.show_pwd:
                changeImage();
        }
    }

    private void changeImage() {
        PasswordTransformationMethod methodHide=PasswordTransformationMethod.getInstance();
        password.setTransformationMethod(methodHide);
        if(flag){
            imageView.setImageDrawable(this.getResources().getDrawable(R.drawable.closeeye));
            flag=false;
            PasswordTransformationMethod method_hide=PasswordTransformationMethod.getInstance();
            password.setTransformationMethod(method_hide);
        }
        else{
            imageView.setImageDrawable(this.getResources().getDrawable(R.drawable.openeye));
            flag=true;
            method_show=HideReturnsTransformationMethod.getInstance();
            password.setTransformationMethod(method_show);
        }
        if(!password.getText().toString().trim().equals("")){
            password.setSelection(password.getText().toString().trim().length());
        }
    }
}
