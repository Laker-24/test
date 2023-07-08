package com.example.work.entity;

import static androidx.room.ForeignKey.CASCADE;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import androidx.room.Index;
import androidx.room.PrimaryKey;

@Entity(tableName = "note",foreignKeys = @ForeignKey(entity = User.class,parentColumns = "id",childColumns = "emp_id",onDelete = CASCADE),
                indices = @Index(value = {"emp_id"}))
public class Note {
    @PrimaryKey(autoGenerate = true)
    public int id;
    @ColumnInfo(name="emp_id")
    public int emp_id;
    @ColumnInfo(name="title")
    public String title;
    @ColumnInfo(name="content")
    public String content;
    @ColumnInfo(name="time")
    public String time;


    public int getId(){return id;}
    public String getTitle(){return title;}
    public String getContent(){return content;}
    public String getTime(){return time;}
    public void setId(){this.id=id;}
    public void setTitle(String title){this.title= this.title;}
    public void setContent(String content){this.content= this.content;}
    public void setTime(String currentTimeFormat){this.time=time;}

}
