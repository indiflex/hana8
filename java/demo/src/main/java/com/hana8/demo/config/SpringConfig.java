package com.hana8.demo.config;

import com.hana8.demo.post.*;
import com.hana8.demo.service.HelpCallService;
import org.springframework.context.annotation.*;

@Configuration
@Lazy
@PropertySources({
        @PropertySource("classpath:db.properties"),
        @PropertySource("classpath:mail.properties")
})
public class SpringConfig {
    @Bean(initMethod = "initialize", destroyMethod = "destroy")
    public HelpCallService helpCallService() {
        return new HelpCallService();
    }

    @Bean
    public PostsRepository postsRepository() {
        return new PostRepositoryImpl();
    }

    @Bean
    public PostsRepository postsRepositoryList() {
        return new PostRepositoryListImpl();
    }

    @Bean
    public PostsService postsService() {
        return new PostServiceImpl(postsRepository(), postsRepositoryList());
    }
}
