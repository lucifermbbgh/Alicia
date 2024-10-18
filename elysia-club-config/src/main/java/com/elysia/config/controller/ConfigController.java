package com.elysia.config.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @BelongsProject: Elysia
 * @BelongsPackage: com.elysia.config.controller
 * @Author: ElysiaKafka
 * @CreateTime: 2023-11-26  17:06:17
 * @Description: TODO
 * @Version: 1.0
 */
@RestController
@RefreshScope// 支持Nacos的动态刷新功能
public class ConfigController {
    @Value("${config.info}")
    private String configInfo;

    @GetMapping("/config/info")
    public String getConfigInfo(){
        return configInfo;
    }
}
