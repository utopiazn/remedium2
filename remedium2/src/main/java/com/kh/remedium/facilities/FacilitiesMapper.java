package com.kh.remedium.facilities;

import java.util.ArrayList;

public interface FacilitiesMapper {
	
	public ArrayList<Facilities> getList();
	public Facilities getFacilities(int no);
	public void insertFacilities(Facilities facilities);
	public void updateFacilities(int no);
	public void deleteFacilities(int no);
}
