package com.niit.springmvc;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Handbag;
import com.spring.model.Category;
import com.spring.services.HandbagServices;

@Controller
public class HandbagController {
	
	@Autowired
private HandbagServices handbagServices;

public HandbagServices getHandbagService() {
	return handbagServices;
}

public void setHandbagService(HandbagServices handbagServices) {
	this.handbagServices = handbagServices;
}
//http:localhost:8080/handbaglist/getAllHandbags//pattern/get*/**
@RequestMapping("/getAllHandbags")
public ModelAndView getAllHandbags(){
	
	List<Handbag> handbags = handbagServices.getAllHandbags();
	return new ModelAndView("handbagsList","handbags",handbags);
	//web-inf/views/bookslist.jsp
}
/*@RequestMapping("/getHandbagsList")
public @ResponseBody List<Handbag> getHandbagsList In JSON(){
	return handbagServices.getAllHandbags();
}*/

@RequestMapping("/getHandbagById/{id}")
public ModelAndView getHandbagById(@PathVariable(value= "id") int id){
	Handbag h=handbagServices.getHandbagById(id);
	//System.out.println("iam here");
	return new ModelAndView("handbagPage","handbagObj",h);
	
}
@RequestMapping("admin/delete/{id}")
public String deleteHandbag(@PathVariable(value = "id") int id) {
	handbagServices.deleteHandbag(id);
	Path paths=Paths.get("E:\\workspacenew\\Handbag Store\\src\\main\\resources\\images\\" + id);
	if(Files.exists(paths)){
	try {
		Files.delete(paths);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	// http://localhost:8080/appname/getAllHandbags
	return "redirect:/getAllHandbags";
}

/*@RequestMapping("/delete/{isbn}")
public String deleteHandbagByIsbn(@PathVariable(value= "isbn") int isbn){
     bookServices.deleteHandbag(isbn);
  //  http://localhost:8080/handbaglist
   return "redirect://getAllHandbags";
}*/
//Two method for insert
//1. Method is to forward to bookForm.jsp


//2. Method is to insert the record by invoking dao method
//<a href=""></a> //get method
@RequestMapping(value= "/admin/handbag/addHandbag", method=RequestMethod.GET)
public String getHandbagForm(Model model){
	Handbag handbag=new Handbag();
	Category category=new Category();
	category.setCid(1);//New Arrivals
	//set the category as 1 for the handbag
	handbag.setCategory(category);
	model.addAttribute("handbagFormObj",handbag);
	return"handbagForm";
}
@RequestMapping(value="/admin/handbag/addHandbag", method=RequestMethod.POST)
public String addHandbag( @Valid @ModelAttribute(value="handbagFormObj")  Handbag handbag,BindingResult result){
	System.out.println("Inside add handbag");
	if(result.hasErrors())
		return "handbagForm";
	handbagServices.addHandbag(handbag);
	MultipartFile handbagImage=handbag.getHandbagImage();
	if(handbagImage!=null&& !handbagImage.isEmpty()){
	Path paths=Paths.get("E:\\workspacenew\\Handbag Store\\src\\main\\resources\\images\\" + handbag.getId() + ".jpg");
	try {
		handbagImage.transferTo(new File(paths.toString()));
	} catch (IllegalStateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	return "redirect:/getAllHandbags";
}	
@RequestMapping("/admin/handbag/editHandbag/{id}")
public ModelAndView getEditForm(@PathVariable(value= "id") int id){
	//First read the record which has to be updated
		//select * from handbagapp where isbn=?
		//Populate the form with already existing value

	Handbag handbag=this.handbagServices.getHandbagById(id);
	return new ModelAndView("editHandbagForm","editHandbagObj",handbag);
	
}
@RequestMapping(value="/admin/handbag/editHandbag", method=RequestMethod.POST)
public String editHandbag(@ModelAttribute(value= "editHandbagObj") Handbag handbag)
{
	
	handbagServices.editHandbag(handbag);
	Path paths=Paths.get("E:\\workspacenew\\Handbag Store\\src\\main\\resources\\images\\" + handbag.getId() + ".jpg");
	if(Files.exists(paths)){
	try {
		Files.delete(paths);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	
	MultipartFile handbagimage=handbag.getHandbagImage();
	if(handbagimage!=null&& !handbagimage.isEmpty()){
	Path path=Paths.get("E:\\workspacenew\\Handbag Store\\src\\main\\resources\\images\\" + handbag.getId() + ".jpg");
	try {
		handbagimage.transferTo(new File(path.toString()));
	} catch (IllegalStateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	
	return"redirect:/getAllHandbags";
	}

@RequestMapping("/getHandbagsList")
public @ResponseBody List<Handbag> getHandbagsListInJSON(){
/*public @ResponseBody String getHandbagsListInJSON(){*/
	//list of handbags
	return handbagServices.getAllHandbags();
	/*return "handbagsList";*/
}

/*@RequestMapping("/handbagsListAngular")
public String getHandbags(){
	return"handbagsListAnguler";
}
*/
}

