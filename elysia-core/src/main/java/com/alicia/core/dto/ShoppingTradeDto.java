package com.alicia.core.dto;

import com.alicia.core.dto.common.AbstractTradeDto;
import com.alicia.common.dto.fruits.Fruits;
import com.alicia.common.dto.goods.FruitsSupMktGoods;
import com.alicia.common.dto.person.FruitsSupMktCustomer;
import com.alicia.common.dto.person.People;
import com.alicia.common.factory.FruitsFactory;
import com.alicia.common.util.DiscountMathUtil;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ShoppingTradeDto extends AbstractTradeDto {

    private People customer;

    public People getCustomer() {
        return customer;
    }

    public void setCustomer(People customer) {
        this.customer = customer;
    }

    public static ShoppingTradeDto getFruitsSupMktTradeInfo(Map<String, Object> inputParams) {
        List<Map<String, Object>> goodsList = (List<Map<String, Object>>) inputParams.get("goodsList");
        String peopleName = (String) inputParams.get("peopleName");
        Integer peopleDiscountLevel = (Integer) inputParams.get("peopleDiscountLevel");

        FruitsFactory factory = new FruitsFactory();
        List<FruitsSupMktGoods> fruitsSupMktGoodsList = new ArrayList<>();
        for (Map<String, Object> goods : goodsList) {
            String goodsName = (String) goods.get("goodsName");
            Integer goodsWeight = (Integer) goods.get("goodsWeight");
            String goodsDiscountString = (String) goods.get("goodsDiscount");
            double goodsDiscount = 1d;
            if (!goodsDiscountString.isEmpty()) {
                goodsDiscount = Double.parseDouble(goodsDiscountString);
            }

            Fruits fruits = factory.product(goodsName);
            fruits.setWeight(goodsWeight);

            FruitsSupMktGoods fruitsSupMktGoods = new FruitsSupMktGoods();
            fruitsSupMktGoods.setFruits(fruits);
            fruitsSupMktGoods.setWeight(goodsWeight);
            fruitsSupMktGoods.setDiscount(goodsDiscount);
            double goodsPrice = DiscountMathUtil.getDiscountPrice(fruits.getName(), fruits.getPrice(), goodsWeight, peopleDiscountLevel, goodsDiscount);
            fruitsSupMktGoods.setPrice(goodsPrice);

            fruitsSupMktGoodsList.add(fruitsSupMktGoods);
        }

        FruitsSupMktCustomer customer = new FruitsSupMktCustomer();
        customer.setName(peopleName);
        customer.setGoods(fruitsSupMktGoodsList);
        customer.setDiscountLevel(peopleDiscountLevel);

        ShoppingTradeDto shoppingTradeDto = new ShoppingTradeDto();
        shoppingTradeDto.setCustomer(customer);

        return shoppingTradeDto;
    }
}
