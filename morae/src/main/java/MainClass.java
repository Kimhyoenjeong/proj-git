import java.io.IOException;


import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class MainClass {
	public static void main(String[] args) throws IOException {

		// �ڷḦ ������ ����Ʈ�� �����ϱ�
		Document doc = Jsoup.connect("http://www.cgv.co.kr/movies/").get();
	//	System.out.println(doc.data()); // html �ڵ带 �����´�.
    
    
		/* ũ�Ѹ� ����
		 <div class="box-contents">
                        <a href="/movies/detail-view/?midx=82986">
                            <strong class="title">�� ������</strong>
                        </a>
                        
         <div class="score">
                            <strong class="percent">������<span>23.2%</span></strong>
                            <!-- 2020.05.07 ������ �������� ����, ������ ��翡������ ���⺯�� (���� ����1~ 3��)-->
                            <div class='egg-gage small'>               
		 */
		
		Elements titles = doc.select("div.box-contents strong.title");
		// ������ ū �������� �����ִ°� ����.
		Elements percents = doc.select("div.box-contents div.score strong.percent span");
		for (int i = 0; i < 7; i++) {
			Element title = titles.get(i);
			Element percent = percents.get(i);
			System.out.println(title.text() + " : "+ percent.text()); // �����ִ� ����Ʈ�� ��ȭ ������ �� �����´�.
		}
	}
}