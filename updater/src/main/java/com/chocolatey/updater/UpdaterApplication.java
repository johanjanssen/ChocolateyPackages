package com.chocolatey.updater;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.List;

@SpringBootApplication
public class UpdaterApplication implements CommandLineRunner {

    public static void main(String[] args) {
        SpringApplication.run(UpdaterApplication.class, args);
    }

    @Autowired
    private List<UpdateService> updateServiceList;

    // mvn spring-boot:run -Dspring-boot.run.profiles=liberica,ojdkbuild
    @Override
    public void run(String... args) throws Exception {
        for (UpdateService updateService: updateServiceList) {
            updateService.start();
        }
    }
}
