//package com.elysia.gate.handler;
//
//import com.alibaba.csp.sentinel.slots.block.BlockException;
//import com.elysia.common.pojo.common.Result;
//
///**
// * @BelongsProject: Elysia
// * @BelongsPackage: com.elysia.gate.handle
// * @Author: ElysiaKafka
// * @CreateTime: 2023-11-29  11:48:26
// * @Description: TODO
// * @Version: 1.0
// */
//public class BlockExceptionHandler extends Throwable {
//    public static Result<String> handler1(BlockException blockException) {
//        return Result.returnFail("99999", "系统繁忙，请稍后再试！", "系统繁忙，请稍后再试！");
//    }
//
//    public static Result<String> handler2(String id, BlockException blockException) {
//        return Result.returnFail("99999", "系统繁忙，请稍后再试！", "系统繁忙，请稍后再试！");
//    }
//}
