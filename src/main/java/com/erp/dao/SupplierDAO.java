package com.erp.dao;

import java.util.List;

import com.erp.vo.Supplier;

// user 공급처
public interface SupplierDAO {
	
	public List<Supplier> getSupplierList() throws Exception;
	
	public void addSupplier(Supplier supplier) throws Exception;
}
