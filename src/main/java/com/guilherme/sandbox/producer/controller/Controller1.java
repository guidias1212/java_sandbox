package com.guilherme.sandbox.producer.controller;

import com.guilherme.sandbox.producer.model.Model1;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping({"/example"})
public class Controller1 {

    @GetMapping
    @RequestMapping(value = "/getModel1", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Model1> businessRule(){

        //TODO: Create Facade - Service - Client Pattern
        Model1 model1 = new Model1();
        model1.setId((long) 1);
        model1.setName("Hello from producer microsservice!");

        return ResponseEntity.ok().body(model1);
    }
}
