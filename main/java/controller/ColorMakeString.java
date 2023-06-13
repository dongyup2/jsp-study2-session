package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ColorMakeString{
	
	public static String makeColor(int num) {
		String color = null;
		if(num== 1) {
			color="빨강";
		}else if(num== 2){
			color="주황";
		}else if(num== 3){
			color="노랑";
		}else if(num== 4){
			color="초록";
		}else if(num== 5){
			color="파랑";
		}else if(num== 6){
			color="남색";
		}else if(num== 7){
			color="보라";
		}
		return color;
	}
}
