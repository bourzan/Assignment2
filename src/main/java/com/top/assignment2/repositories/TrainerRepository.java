package com.top.assignment2.repositories;

import com.top.assignment2.models.Trainer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TrainerRepository extends JpaRepository<Trainer, Integer> {
    
}
