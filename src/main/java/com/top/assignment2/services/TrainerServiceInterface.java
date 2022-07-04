package com.top.assignment2.services;

import com.top.assignment2.models.Trainer;
import java.util.List;

public interface TrainerServiceInterface {
    
    public void insertTrainer(Trainer t);
    
    public List<Trainer> getAllTrainers();
    
    public Trainer getTrainerById(Integer i);
    
    public void updateTrainer(Integer id, String firstname, String lastname, String subject);
    
    public void deleteTrainer(Integer id);
    
    public boolean isValid(Trainer t);
    
}
