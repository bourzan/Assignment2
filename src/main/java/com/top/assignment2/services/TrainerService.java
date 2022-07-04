package com.top.assignment2.services;

import com.top.assignment2.models.Trainer;
import com.top.assignment2.repositories.TrainerRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TrainerService implements TrainerServiceInterface {
    
    @Autowired
    TrainerRepository tr;

    @Override
    public void insertTrainer(Trainer t) {
        tr.save(t);
    }

    @Override
    public List<Trainer> getAllTrainers() {
        return tr.findAll();
    }

    @Override
    public Trainer getTrainerById(Integer i) {
        return tr.findById(i).get();
    }

    @Override
    @Transactional
    public void updateTrainer(Integer id, String firstname, String lastname, String subject) {
        Trainer t = tr.findById(id).get();
        if (t != null) {
            t.setFirstname(firstname);
            t.setLastname(lastname);
            t.setSubject(subject);
            tr.save(t);
        }
    }

    @Override
    @Transactional
    public void deleteTrainer(Integer id) {
        Trainer t = tr.findById(id).get();
        if (t != null) {
            tr.delete(t);
        }
    }

    @Override
    public boolean isValid(Trainer t) {
        return !(t.getFirstname().isBlank() || t.getLastname().isBlank() || t.getSubject().isBlank());
    }
    
    
}
