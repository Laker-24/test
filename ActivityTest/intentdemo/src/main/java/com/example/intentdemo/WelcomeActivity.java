package com.example.intentdemo;

//import android.app.Activity;
import android.app.AlertDialog;
//import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
//import android.widget.Button;
import android.widget.SearchView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;

import com.google.android.material.snackbar.Snackbar;

public class WelcomeActivity extends AppCompatActivity {

   @Override
    protected void onCreate(Bundle savedInstanceState) {
       super.onCreate(savedInstanceState);
       setContentView(R.layout.activity_welcome);
       SharedPreferences sp=getSharedPreferences("mydata", Context.MODE_PRIVATE);
       String value = sp.getString("username","");
       ActionBar actionBar = getSupportActionBar();
//       Intent intent=getIntent();
       if(actionBar!=null) {
           actionBar.setTitle("欢迎用户" + value);
           Toast.makeText(this, "登录成功", Toast.LENGTH_SHORT).show();
       }
   }
   @Override
    public boolean onCreateOptionsMenu(Menu menu){
       getMenuInflater().inflate(R.menu.menu,menu);
       MenuItem menuItem = menu.findItem(R.id.menu_search);
       SearchView searchView = (SearchView)menuItem.getActionView();
       searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
         @Override
         public boolean onQueryTextSubmit(String s) {
            Toast.makeText(WelcomeActivity.this,s,Toast.LENGTH_SHORT).show();
            return false;
         }

         @Override
         public boolean onQueryTextChange(String s) {
            return false;
         }
      });
       return super.onCreateOptionsMenu(menu);
   }
   public boolean onQueryTextSubmit(String s){
      Intent intent = new Intent();
      intent.setAction(Intent.ACTION_VIEW);
      intent.setData(Uri.parse("https://www.baidu.com/s?wd="+s));
      startActivity(intent);
      return false;
   }
   @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item){
       switch(item.getItemId())
       {
           case R.id.destroy:
                       new AlertDialog.Builder(WelcomeActivity.this)
                               .setTitle("提示")
                               .setMessage("确定注销该账号吗？")
                               .setPositiveButton("确定", new DialogInterface.OnClickListener() {
                                   @Override
                                   public void onClick(DialogInterface dialog, int which) {
                                       finish();
                                   }
                               })
                               .setNegativeButton("取消",null)
                               .setCancelable(false)
                               .show();
                       break;
           case R.id.out:
               Snackbar.make(findViewById(R.id.constraintLayout),"确定退出吗？",Snackbar.LENGTH_SHORT)
                       .setAction("确定", new View.OnClickListener() {
                           @Override
                           public void onClick(View v) {
                               finish();
                           }
                       }).show();

       }
       return false;
   }

   }

