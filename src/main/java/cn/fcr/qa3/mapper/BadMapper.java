package cn.fcr.qa3.mapper;

import cn.fcr.qa3.pojo.Bad;

public interface BadMapper {
    int insert(Bad record);

    int insertSelective(Bad record);
}