package com.example.todo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class TodoApplication {
       
    private static final Logger logger = LoggerFactory.getLogger(TodoApplication.class);

    public static void main(String[] args) {
        SpringApplication.run(TodoApplication.class, args);

        logger.info("Application démarre avec Logback Test CI GitHub Actions");
    }
    }


