package com.imark.system.dao.jpa;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.imark.system.model.SysMenu;

public interface SysMenuJpaDao extends PagingAndSortingRepository<SysMenu, String>{

}
