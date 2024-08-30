package com.elysia.market.api.order.impl;

import com.elysia.common.pojo.common.Result;
import com.elysia.market.api.order.StockTestService;
import org.springframework.stereotype.Service;

/**
 * @BelongsProject: Elysia
 * @BelongsPackage: com.elysia.market.api.order.impl
 * @Author: ElysiaKafka
 * @CreateTime: 2023-11-29  22:25:38
 * @Description: TODO
 * @Version: 1.0
 */
//@Component
@Service
public class StockTestServiceImpl implements StockTestService {
    @Override
    public Result<String> reduceStock(String orderId) {
        return Result.returnUnknown("99999", "服务降级返回", "服务降级返回");
    }

    @Override
    public Result<String> testTimeout(String id) {
        return Result.returnUnknown("99999", "服务降级返回", "服务降级返回");
    }
}
