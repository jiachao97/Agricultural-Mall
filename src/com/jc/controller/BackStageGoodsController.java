package com.jc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jc.pojo.Category;
import com.jc.pojo.Goods;
import com.jc.service.GoodsService;

@Controller
@RequestMapping("backStage")
public class BackStageGoodsController {

	@Value("${feature.cate.id}")
	private Integer RECOMMEND_FEATURE_ID;// 特色推荐商品分类id
	@Value("${recommend.seed.id}")
	private Integer RECOMMEND_SEED_ID;// 种子分类id
	@Value("${recommend.pesticide.id}")
	private Integer RECOMMEND_PESTICIDE_ID;// 农药分类id
	@Value("${recommend.tool.id}")
	private Integer RECOMMEND_TOOL_ID;// 农具分类id
	@Value("${recommend.book.id}")
	private Integer RECOMMEND_BOOK_ID;// 农业书籍分类id

	@Autowired
	private GoodsService goodsService;

	/**
	 * 后台查看特色推荐商品列表
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("feature")
	public String getFeature(Model model) throws Exception {

		List<Goods> featureList = this.goodsService.recommend(RECOMMEND_FEATURE_ID);
		model.addAttribute("featureList", featureList);

		return "admin/goods/list_feature";
	}

	/**
	 * 后台查看种子列表
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("seed")
	public String getSeed(Model model) throws Exception {

		List<Goods> seedList = this.goodsService.recommend(RECOMMEND_SEED_ID);
		model.addAttribute("seedList", seedList);

		return "admin/goods/list_seed";
	}

	/**
	 * 后台查看农药列表
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("pesticide")
	public String getPesticide(Model model) throws Exception {

		List<Goods> pesticideList = this.goodsService.recommend(RECOMMEND_PESTICIDE_ID);
		model.addAttribute("pesticideList", pesticideList);

		return "admin/goods/list_pesticide";
	}

	/**
	 * 后台查看农具列表
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("tool")
	public String getTool(Model model) throws Exception {

		List<Goods> toolList = this.goodsService.recommend(RECOMMEND_TOOL_ID);
		model.addAttribute("toolList", toolList);

		return "admin/goods/list_tool";
	}

	/**
	 * 后台查看农业书籍列表
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("book")
	public String getBook(Model model) throws Exception {

		List<Goods> bookList = this.goodsService.recommend(RECOMMEND_BOOK_ID);
		model.addAttribute("bookList", bookList);

		return "admin/goods/list_book";
	}
	
	/**
	 * 后台跳转至商品编辑页
	 * @param goods_id
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toEdit")
	public String toEdit(Integer goods_id,Model model) throws Exception {
		
		Goods goods = this.goodsService.getGoods(goods_id);
		model.addAttribute("goods", goods);
		List<Category> categoryList = this.goodsService.getCategory();
		model.addAttribute("categoryList", categoryList);
		
		return "admin/goods/edit";
	}
	
	@RequestMapping("editGoods")
	public String editGoods(Model model) throws Exception {
		
		return "admin/welcome";
	}
	
	/**
	 * 后台跳转至商品添加页
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toAdd")
	public String toAdd(Model model) throws Exception {
		
		List<Category> categoryList = this.goodsService.getCategory();
		model.addAttribute("categoryList", categoryList);
		
		return "admin/goods/add";
	}
	
	@RequestMapping("addGoods")
	public String addGoods(Model model) throws Exception {
		
		return "admin/welcome";
	}
	
	/**
	 * 后台删除商品
	 * @param goods_id
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toDel")
	public String toDel(Integer goods_id,Model model) throws Exception {
		
		this.goodsService.delGoodsById(goods_id);
		return "admin/welcome";
	}

}
