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
	private Integer RECOMMEND_CATE_ID;//�����Ƽ���Ʒ����id
	@Value("${elite_a_cate_id}")
	private Integer ELITE_A_CATE_ID;//��Ʒ�Ƽ�a
	@Value("${elite_b_cate_id}")
	private Integer ELITE_B_CATE_ID;//��Ʒ�Ƽ�b
	@Value("${elite_c_cate_id}")
	private Integer ELITE_C_CATE_ID;//��Ʒ�Ƽ�c
	@Value("${elite_d_cate_id}")
	private Integer ELITE_D_CATE_ID;//��Ʒ�Ƽ�d
	@Value("${elite_e_cate_id}")
	private Integer ELITE_E_CATE_ID;//��Ʒ�Ƽ�e
	@Value("${elite_f_cate_id}")
	private Integer ELITE_F_CATE_ID;//��Ʒ�Ƽ�f
	@Value("${recommend.seed.id}")
	private Integer RECOMMEND_SEED_ID;//���ӷ���id
	@Value("${recommend.pesticide.id}")
	private Integer RECOMMEND_PESTICIDE_ID;//ũҩ����id
	@Value("${recommend.tool.id}")
	private Integer RECOMMEND_TOOL_ID;//ũ�߷���id
	@Value("${recommend.book.id}")
	private Integer RECOMMEND_BOOK_ID;//ũҵ�鼮����id
	
	/**
	 * ��ת����ҳ
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toHome")
	public String toHome() throws Exception {
		
		return "home";
	}
	
	/**
	 * ��ת���̳�ҳ
	 * @param cate_id
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toMall")
	public String toMall(Integer cate_id,Model model) throws Exception {
		
		//�����Ƽ�
		List<Goods> recommendList = this.goodsService.recommend(RECOMMEND_CATE_ID);
		model.addAttribute("recommendList", recommendList);
		
		//��Ʒչʾa
		List<Goods> elite_AList = this.goodsService.recommend(ELITE_A_CATE_ID);
		model.addAttribute("elite_AList", elite_AList);
		//��Ʒչʾb
		List<Goods> elite_BList = this.goodsService.recommend(ELITE_B_CATE_ID);
		model.addAttribute("elite_BList", elite_BList);
		//��Ʒչʾc
		List<Goods> elite_CList = this.goodsService.recommend(ELITE_C_CATE_ID);
		model.addAttribute("elite_CList", elite_CList);
		//��Ʒչʾd
		List<Goods> elite_DList = this.goodsService.recommend(ELITE_D_CATE_ID);
		model.addAttribute("elite_DList", elite_DList);
		//��Ʒչʾe
		List<Goods> elite_EList = this.goodsService.recommend(ELITE_E_CATE_ID);
		model.addAttribute("elite_EList", elite_EList);
		//��Ʒչʾf
		List<Goods> elite_FList = this.goodsService.recommend(ELITE_F_CATE_ID);
		model.addAttribute("elite_FList", elite_FList);
		
		return "mall";
	}
	
	/**
	 * ��ת�����ﳵҳ
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toCart")
	public String toCart() throws Exception {
		
		return "cart";
	}
	
	/**
	 * ��ת������ҳ
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toOrder")
	public String toOrder() throws Exception {
		
		return "order";
	}
	
	/**
	 * ��ת����������ҳ
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
	 * ��ת��ũ������ҳ
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toAgriculture")
	public String toAgriculture(Model model) throws Exception {
		
		//����
		List<Goods> seedList = this.goodsService.recommend(RECOMMEND_SEED_ID);
		model.addAttribute("seedList", seedList);
		//ũҩ
		List<Goods> pesicideList = this.goodsService.recommend(RECOMMEND_PESTICIDE_ID);
		model.addAttribute("pesicideList", pesicideList);
		//ũ��
		List<Goods> toolList = this.goodsService.recommend(RECOMMEND_TOOL_ID);
		model.addAttribute("toolList", toolList);
		//ũҵ�鼮
		List<Goods> bookList = this.goodsService.recommend(RECOMMEND_BOOK_ID);
		model.addAttribute("bookList", bookList);
		
		return "agriculture";
	}
	
	/**
	 * ��ת��ר��ҳ
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toExpert")
	public String toExpert(Model model) throws Exception {
		
		return "expert";
	}
	
}
