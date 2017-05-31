package controllers;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.entertainment_backend.dao.Categorydao;
import com.niit.entertainment_backend.dao.Supplierdao;
import com.niit.entertainment_backend.dao.Teledao;
import com.niit.entertainment_backend.model.Categorymodel;
import com.niit.entertainment_backend.model.Suppliermodel;
import com.niit.entertainment_backend.model.Telemodel;



@Controller
class CategoryController {
    
    @Autowired
    Categorydao categorys;
    @Autowired
    Supplierdao suppliers;
    @Autowired
    Teledao teleDao;
    /* @RequestMapping(value ="/add")
        public ModelAndView add() {
            System.out.println("in add");
         ModelAndView c1=new ModelAndView("Adding");
            return c1;
        }*/
     
    @RequestMapping(value ="/add")
    public ModelAndView add() {

		List<Categorymodel> list=categorys.getAllCategoryDetails();
	  List<Suppliermodel> slist=suppliers.getAllCategoryDetails();
		ModelAndView mv = new ModelAndView("Adding");
		//System.out.println(list.get(0).getC_name());	
		//mv.addObject("slist", slist);
		mv.addObject("clist", list);
		mv.addObject("slist",slist);
		return mv;
        
	// ModelAndView c1=new ModelAndView("Adding");
	//	return c1;
    }
     
     @RequestMapping(value ="/category")
        public ModelAndView addcategory(HttpServletRequest request)
        {
            
         /*String c_id=String.valueOf(request.getParameter("cId"));*/
    	 int c_id=Integer.parseInt(request.getParameter("cId"));
            String c_name=request.getParameter("cn");
            System.out.println(c_id+"---"+c_name);
            categorys.addCategoryDetails(new Categorymodel(c_id,c_name,null));
            List<Categorymodel> list=categorys.getAllCategoryDetails();
      	  List<Suppliermodel> slist=suppliers.getAllCategoryDetails();
      		ModelAndView mv = new ModelAndView("Adding");
      		//System.out.println(list.get(0).getC_name());	
      		//mv.addObject("slist", slist);
      		
      		mv.addObject("clist", list);
      		mv.addObject("slist",slist);
      		return mv;
            
        }
     
     
     
     @RequestMapping(value ="/supplier")
     public ModelAndView addsupplier(HttpServletRequest request)
     {
         
      /*String s_id=String.valueOf(request.getParameter("sId"));*/
    	 int
    	 s_id=Integer.parseInt(request.getParameter("sId"));
         String s_name=request.getParameter("sn");
         System.out.println(s_id+"---"+s_name);
        suppliers.addSupplierDetails(new Suppliermodel(s_id,s_name));
        List<Categorymodel> list=categorys.getAllCategoryDetails();
  	  List<Suppliermodel> slist=suppliers.getAllCategoryDetails();
  		ModelAndView mv = new ModelAndView("Adding");
  		//System.out.println(list.get(0).getC_name());	
  		//mv.addObject("slist", slist);
  		mv.addObject("clist", list);
  		mv.addObject("slist",slist);
  		return mv;
     }
     
     @RequestMapping(value ="/product")
     public ModelAndView addproduct(HttpServletRequest request)
     {
         
         /*String p_id=request.getParameter("pid");*/
    	 int p_id=Integer.parseInt(request.getParameter("pid"));
         String p_name=request.getParameter("pn");
         String p_img=request.getParameter("pimg");
         int p_price=Integer.valueOf(request.getParameter("pp"));
         /*String p_cat=request.getParameter("pc");*/
         int p_cat=Integer.parseInt(request.getParameter("pc"));
         /*String p_sc=request.getParameter("psc");*/
         int p_sc=Integer.parseInt(request.getParameter("psc"));
         String pdes=request.getParameter("pd");
         System.out.println(p_id+"---"+p_name+p_cat+p_price+p_img+p_sc);
         Categorymodel c=categorys.getCategoryDetails(p_cat);
         Suppliermodel s=suppliers.getSupplierDetails(p_sc);
         Telemodel t=new Telemodel();

      
         t.setProdId(p_id);
         t.setImage(p_img);
         t.setProdDescription(pdes);
         t.setProdName(p_name);
         t.setProdPrice(p_price);
         t.setProdCategory(c);       
         t.setProdSupplier(s);
        
         teleDao.addProduct(t);
         List<Categorymodel> list=categorys.getAllCategoryDetails();
   	  List<Suppliermodel> slist=suppliers.getAllCategoryDetails();
   		ModelAndView mv = new ModelAndView("Adding");
   		//System.out.println(list.get(0).getC_name());	
   		//mv.addObject("slist", slist);
   		mv.addObject("clist", list);
   		mv.addObject("slist",slist);
   		return mv;
     }

}
		