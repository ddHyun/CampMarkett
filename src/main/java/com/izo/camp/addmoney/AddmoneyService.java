package com.izo.camp.addmoney;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izo.camp.mapper.AddmoneyMapper;

@Service
public class AddmoneyService {
	//function
	
	@Autowired
	AddmoneyMapper addmoneyMapper;
	
	
}
