package config;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

public class ListTest {

	public static void main(String[] args) {
		List<String> strList = new ArrayList<>();
		strList.add("가나다");
		strList.add("나다");
		strList.add("가다");
		strList.add("오라");

		Gson g = new Gson();
		String json = g.toJson(strList);
		System.out.println(json);
		String searchStr = "가";
		
		for (int i = 0; i < strList.size(); i++) {
			if (strList.get(i).indexOf(searchStr) == -1) {
				strList.remove(i);
			}
		}
		System.out.println(strList);
	}
}
