package com.imark.common.util;

import java.security.MessageDigest;

public class UserCredentialsMatcher{

	
	/**
	 * 
	 * 功能 :生成Md5字符串
	
	 * 开发：ycwu 2012-11-30
	
	 * @param _str
	 * @return
	 */
	public final static String GetMD5Str32(String _str) {
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
				'a', 'b', 'c', 'd', 'e', 'f' };
		try {
			byte[] strTemp = _str.getBytes();
			MessageDigest mdTemp = MessageDigest.getInstance("MD5");
			mdTemp.update(strTemp);
			byte[] md = mdTemp.digest();
			int j = md.length;
			char str[] = new char[j * 2];
			int k = 0;
			for (int i = 0; i < j; i++) {
				byte byte0 = md[i];
				str[k++] = hexDigits[byte0 >>> 4 & 0xf];
				str[k++] = hexDigits[byte0 & 0xf];
			}
			return new String(str);
		} catch (Exception e) {
			return null;  
		}
	}

}
