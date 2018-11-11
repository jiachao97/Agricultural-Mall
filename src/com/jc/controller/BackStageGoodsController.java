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
	private Integer RECOMMEND_FEATURE_ID;// ��ɫ�Ƽ���Ʒ����id
	@Value("${recommend.seed.id}")
	private Integer RECOMMEND_SEED_ID;// ���ӷ���id
	@Value("${recommend.pesticide.id}")
	private Integer RECOMMEND_PESTICIDE_ID;// ũҩ����id
	@Value("${recommend.tool.id}")
	private Integer RECOMMEND_TOOL_ID;// ũ�߷���id
	@Value("${recommend.book.id}")
	private Integer RECOMMEND_BOOK_ID;// ũҵ�鼮����id

	@Autowired
	private GoodsService goodsService;

	/**
	 * ��̨�鿴��ɫ�Ƽ���Ʒ�б�
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
	 * ��̨�鿴�����б�
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
	 * ��̨�鿴ũҩ�б�
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
	 * ��̨�鿴ũ���б�
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
	 * ��̨�鿴ũҵ�鼮�б�
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
	 * ��̨��ת����Ʒ�༭ҳ
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
	 * ��̨��ת����Ʒ���ҳ
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
	 * ��̨ɾ����Ʒ
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
