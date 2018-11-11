package com.jc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jc.pojo.Goods;
import com.jc.pojo.Supply;
import com.jc.service.GoodsService;
import com.jc.service.SupplyService;
import com.jc.utils.Page;

@Controller
public class HomeController {

	@Autowired
	private GoodsService goodsService;
	@Autowired
	private SupplyService supplyService;
	
	@Value("${recommend.cate.id}")
	private Integer RECOMMEND_CATE_ID;//今日推荐商品分类id
	@Value("${elite_a_cate_id}")
	private Integer ELITE_A_CATE_ID;//精品推荐a
	@Value("${elite_b_cate_id}")
	private Integer ELITE_B_CATE_ID;//精品推荐b
	@Value("${elite_c_cate_id}")
	private Integer ELITE_C_CATE_ID;//精品推荐c
	@Value("${elite_d_cate_id}")
	private Integer ELITE_D_CATE_ID;//精品推荐d
	@Value("${elite_e_cate_id}")
	private Integer ELITE_E_CATE_ID;//精品推荐e
	@Value("${elite_f_cate_id}")
	private Integer ELITE_F_CATE_ID;//精品推荐f
	@Value("${recommend.seed.id}")
	private Integer RECOMMEND_SEED_ID;//种子分类id
	@Value("${recommend.pesticide.id}")
	private Integer RECOMMEND_PESTICIDE_ID;//农药分类id
	@Value("${recommend.tool.id}")
	private Integer RECOMMEND_TOOL_ID;//农具分类id
	@Value("${recommend.book.id}")
	private Integer RECOMMEND_BOOK_ID;//农业书籍分类id
	
	/**
	 * 跳转至首页
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toHome")
	public String toHome() throws Exception {
		
		return "home";
	}
	
	/**
	 * 跳转至商城页
	 * @param cate_id
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toMall")
	public String toMall(Integer cate_id,Model model) throws Exception {
		
		//今日推荐
		List<Goods> recommendList = this.goodsService.recommend(RECOMMEND_CATE_ID);
		model.addAttribute("recommendList", recommendList);
		
		//精品展示a
		List<Goods> elite_AList = this.goodsService.recommend(ELITE_A_CATE_ID);
		model.addAttribute("elite_AList", elite_AList);
		//精品展示b
		List<Goods> elite_BList = this.goodsService.recommend(ELITE_B_CATE_ID);
		model.addAttribute("elite_BList", elite_BList);
		//精品展示c
		List<Goods> elite_CList = this.goodsService.recommend(ELITE_C_CATE_ID);
		model.addAttribute("elite_CList", elite_CList);
		//精品展示d
		List<Goods> elite_DList = this.goodsService.recommend(ELITE_D_CATE_ID);
		model.addAttribute("elite_DList", elite_DList);
		//精品展示e
		List<Goods> elite_EList = this.goodsService.recommend(ELITE_E_CATE_ID);
		model.addAttribute("elite_EList", elite_EList);
		//精品展示f
		List<Goods> elite_FList = this.goodsService.recommend(ELITE_F_CATE_ID);
		model.addAttribute("elite_FList", elite_FList);
		
		return "mall";
	}
	
	/**
	 * 跳转至购物车页
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toCart")
	public String toCart() throws Exception {
		
		return "cart";
	}
	
	/**
	 * 跳转至订单页
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toOrder")
	public String toOrder() throws Exception {
		
		return "order";
	}
	
	/**
	 * 跳转至供求中心页
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toSupply")
	public String toSupply(@RequestParam(defaultValue="1") Integer page,@RequestParam(defaultValue="4") Integer size,Model model) throws Exception {
		
		Page<Supply> supplyList = this.supplyService.getSupplyList(page, size);
		model.addAttribute("page", supplyList);
		
		return "supply";
	}
	
	/**
	 * 跳转至农资下乡页
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toAgriculture")
	public String toAgriculture(Model model) throws Exception {
		
		//种子
		List<Goods> seedList = this.goodsService.recommend(RECOMMEND_SEED_ID);
		model.addAttribute("seedList", seedList);
		//农药
		List<Goods> pesicideList = this.goodsService.recommend(RECOMMEND_PESTICIDE_ID);
		model.addAttribute("pesicideList", pesicideList);
		//农具
		List<Goods> toolList = this.goodsService.recommend(RECOMMEND_TOOL_ID);
		model.addAttribute("toolList", toolList);
		//农业书籍
		List<Goods> bookList = this.goodsService.recommend(RECOMMEND_BOOK_ID);
		model.addAttribute("bookList", bookList);
		
		return "agriculture";
	}
	
	/**
	 * 跳转至专家页
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toExpert")
	public String toExpert(Model model) throws Exception {
		
		return "expert";
	}
	
}
