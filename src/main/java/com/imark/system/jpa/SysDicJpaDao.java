package com.imark.system.jpa;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.imark.system.model.SysDic;

public interface SysDicJpaDao extends PagingAndSortingRepository<SysDic, String>{

	SysDic findByDicCode(String dicCode);

}
