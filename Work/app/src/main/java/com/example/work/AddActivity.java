package com.example.work;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;

import androidx.appcompat.app.AppCompatActivity;

import com.example.work.Dao.NoteDao;
import com.example.work.db.AppDatabase;
import com.example.work.entity.Note;
import com.example.work.util.ToastUtil;

import java.text.SimpleDateFormat;
import java.util.Date;

public class AddActivity extends AppCompatActivity {
    private EditText etTitle,etContent;

    private NoteDao noteDao;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_add);

        etTitle = findViewById(R.id.et_title);
        etContent = findViewById(R.id.et_content);
        noteDao = AppDatabase.getINSTANCE(this).noteDao();

    }

    public void add(View view) {
        String title = etTitle.getText().toString();
        String content = etContent.getText().toString();
        if (TextUtils.isEmpty(title)) {
            ToastUtil.toastShort(this, "标题不能为空！");
            return;
        }

        Note note = new Note();

        note.setTitle(title);
        note.setContent(content);
        note.setTime(getCurrentTimeFormat());
        long row = noteDao.insert(note);
        if (row != -1) {
            ToastUtil.toastShort(this,"添加成功！");
            this.finish();
        }else {
            ToastUtil.toastShort(this,"添加失败！");
        }

    }

    private String getCurrentTimeFormat() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYY年MM月dd HH:mm:ss");
        Date date = new Date();
        return simpleDateFormat.format(date);
    }
}
