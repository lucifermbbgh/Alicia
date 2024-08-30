package com.elysia.common.pojo.common;

import com.elysia.common.base.BaseDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public abstract class AbstractTradeDto extends BaseDto {
    private static final long serialVersionUID = 1L;

    private Integer preStatus;
}
