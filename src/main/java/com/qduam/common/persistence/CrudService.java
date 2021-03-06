/**
 * 
 */
package com.qduam.common.persistence;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

/**
 * CrudService create|read|update|delete
 * @author lilinzhen
 * @version 2018年3月4日
 */
public abstract class CrudService<D extends CrudDao<T>, T> extends BaseService{

	/**
	 * 持久层对象
	 */
	@Autowired
	protected D dao;
	
	/**
	 * 获取单条数据
	 * @param id
	 * @return
	 */
	public T get(int id) {
		return dao.get(id);
	}

	/**
	 * 查询列表数据
	 * @param entity
	 * @return
	 */
	public List<T> findList(T entity) {
		return dao.findList(entity);
	}

	/**
	 * 插入数据
	 * @param entity
	 */
	public int insert(T entity) {
		return dao.insert(entity);
	}
	
	/**
	 * 更新数据
	 * @param entity
	 */
	public int update(T entity) {
		return dao.update(entity);
	}

	/**
	 * 删除数据
	 * @param id
	 * @return
	 */
	public int delete(int id) {
		return dao.delete(id);
	}

	/**
	 * 批量删除数据
	 * @param ids
	 * @return
	 */
	public int deleteAll(int[] ids) {
		int rows=0;
		for (int id : ids) {
			rows+=delete(id);
		}
		return rows;
	}

}
