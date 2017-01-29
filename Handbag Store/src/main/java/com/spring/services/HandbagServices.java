package com.spring.services;
import java.util.List;
import com.spring.model.Handbag;
   public interface HandbagServices {
            List<Handbag> getAllHandbags();
                   Handbag getHandbagById(int id);

                  public void deleteHandbag(int id);
	              
void addHandbag(Handbag handbag);
void editHandbag(Handbag handbag);
   }
   



