package com.spring.dao;
import java.util.List;

import com.spring.model.Handbag;



public interface HandbagDao {
List<Handbag> getAllHandbags();
Handbag getHandbagById(int id);
void deleteHandbag(int id);
void addHandbag(Handbag handbag);
void editHandbag(Handbag handbag);

}


