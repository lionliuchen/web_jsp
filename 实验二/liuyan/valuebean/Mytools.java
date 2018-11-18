package bean.valuebean;

public class Mytools {
	public static String change(String str){//转换字符串
		str=str.replace("<", "&lt;");
		str=str.replace(">", "&gt;");
		return str;
	}
}
