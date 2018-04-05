package cn.fcr.qa3.mapper;

import cn.fcr.qa3.pojo.Type;

public interface TypeMapper {
    int insert(Type record);

    int insertSelective(Type record);
}