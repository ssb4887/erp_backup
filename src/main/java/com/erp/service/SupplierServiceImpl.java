package com.erp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.dao.SupplierDAO;
import com.erp.vo.Supplier;

// user 공급처
@Service
public class SupplierServiceImpl implements SupplierService {

	@Inject
	SupplierDAO dao;
	
	@Override
	public List<Supplier> getSupplierList() throws Exception {

		return dao.getSupplierList();
	}
	
	@Override
	public void addSupplierAction(Supplier supplier) throws Exception {
		
		dao.addSupplier(supplier);
	}

}