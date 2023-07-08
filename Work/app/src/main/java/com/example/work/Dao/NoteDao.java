package com.example.work.Dao;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Ignore;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;

import com.example.work.entity.Note;

import java.util.List;

@Dao
public interface NoteDao {
    @Query("SELECT*FROM note")
    List<Note> getAll();

    @Query("SELECT*FROM note WHERE title=:title ")
    Note findNote(String title);

    @Insert
    long insert(Note note);

    @Delete
    void delete(Note note);


    @Update
    int update(Note note);
    @Query("delete from Note Where id==:id")
    int delete(int id);
}
