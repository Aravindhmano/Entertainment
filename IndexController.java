package controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.niit.entertainment_backend.dao.Teledao;

@Controller
public class IndexController {
	//@Autowired	
	Teledao t_dao;
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	
	
	
	@RequestMapping("/ProductDetails")
	public ModelAndView product() {

		ModelAndView mv = new ModelAndView("ProductDetails");
		
		return mv;
	}
	@RequestMapping("/login")
	public ModelAndView login() {

		ModelAndView mv = new ModelAndView("login");
		
		return mv;
	}
	@RequestMapping("/registration")
	public ModelAndView registration() {

		ModelAndView mv = new ModelAndView("registration");
		
		return mv;
	}
	

	@RequestMapping("/ProductList")
	public ModelAndView ProductList() {
/*		Teledao pr=new Teledaoimpl();
			  pr.addProduct(new Telemodel("P001","Sonata NH7987SM03CJ Analog Watch",
			             "Sonata","Analog Watch",2000,3,"Wrist Watch","RetailNet"));
			  pr.addProduct(new Telemodel("P002","Sonata NH7987SM03CJ Analog Watch",
			             "Sonata","Analog Watch",1000,3,"Wrist Watch","RetailNet"));
			  pr.addProduct(new Telemodel("P003","Sonata NH7987SM03CJ Analog Watch",
			             "Sonata","Analog Watch",1000,3,"Wrist Watch","RetailNet"));*/
					//return back to index.jsp
					ModelAndView model = new ModelAndView("ProductList");
					//model.addObject("prodD", pr);

					return model;
				}
				
	
}