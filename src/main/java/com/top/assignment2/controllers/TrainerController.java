package com.top.assignment2.controllers;

import com.top.assignment2.models.Trainer;
import com.top.assignment2.services.TrainerServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/trainers")
public class TrainerController {

    @Autowired
    TrainerServiceInterface ts;

    @GetMapping("")
    public String showAllTrainers(ModelMap mm) {
        mm.addAttribute("alltrainers", ts.getAllTrainers());
        return ("trainerlist");
    }

    @GetMapping("/add")
    public String addTrainerForm(ModelMap mm) {
        mm.addAttribute("newtrainer", new Trainer());
        return ("traineradd");
    }

    @PostMapping("/doadd")
    public String addTrainer(@ModelAttribute("newtrainer") Trainer t) {
        if (!ts.isValid(t)) {
            return ("redirect:/trainers/add");
        } else {
            ts.insertTrainer(t);
            return ("redirect:/trainers");
        }
    }

    @GetMapping("/update/{id}")
    public String updateTrainerForm(@PathVariable("id") Integer id, ModelMap mm) {
        mm.addAttribute("tup", ts.getTrainerById(id));
        return ("trainerupdate");
    }

    @PostMapping("/doupdate")
    public String updateTrainer(@ModelAttribute("tup") Trainer t) {
        if (ts.isValid(t)) {
            ts.updateTrainer(t.getTrainerid(), t.getFirstname(), t.getLastname(), t.getSubject());
        }
        return ("redirect:/trainers");
    }

    @GetMapping("/delete/{id}")
    public String deleteTrainer(@PathVariable("id") Integer id) {
        ts.deleteTrainer(id);
        return ("redirect:/trainers");
    }

}
