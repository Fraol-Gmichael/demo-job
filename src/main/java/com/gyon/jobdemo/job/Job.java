package com.gyon.jobdemo.job;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class Job {
    @Scheduled(fixedDelay = 5000L) // Executes every 5 seconds
    public void execute() {
        System.out.println("Job executed at: " + System.currentTimeMillis());
    }
}
