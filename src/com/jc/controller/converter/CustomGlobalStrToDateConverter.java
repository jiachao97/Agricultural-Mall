package com.jc.controller.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

/**
 * ���ڸ�ʽת��
 * S - source:Դ
 * T - target:Ŀ��
 */
public class CustomGlobalStrToDateConverter implements Converter<String, Date> {

	@Override
	public Date convert(String source) {
		try {
			Date date = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(source);
			return date;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

}
