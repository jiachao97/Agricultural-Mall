package com.jc.utils;

public class StringUtils {

	/**
	 * ��֤�����ַ����Ƿ�Ϊ��
	 * @param str
	 * @return
	 */
	public static boolean isEmpty(String str){
		if("".equals(str) || str==null){
			return true;
		}else{
			return false;
		}
	}
	
	public static boolean isNotEmpty(String str){
		if(!"".equals(str) && str!=null){
			return true;
		}else{
			return false;
		}
	}
}
