package com.erp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.erp.dao.SupplierDAO;
import com.erp.vo.Supplier;

// user 공급처
@Service
public class SupplierServiceImpl implements SupplierService {

	SupplierDAO dao;
	@Override
	public List<Supplier> getSupplier() throws Exception {

		return dao.getSupplier();
	}

}