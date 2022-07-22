<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

</head>

<body>



<%

        // �Ľ��� ����Ʈ�� �����ش�(�ش� ����Ʈ�� ���� �±׸� �� �ܾ��)

 	Document doc2 = Jsoup.connect("http://www.playdb.co.kr/magazine/magazine_temp.asp?Page=1&kindno=2&sReqList=&stext=&sort=1").get();



        System.out.println(doc2.data());

        System.out.println(doc2.body());

        

        // list �Ӽ��ȿ� li ��� �����͵��� �ܾ�´�

        Elements posts = doc2.body().getElementsByClass("list");

        System.out.println(doc2.getElementsByClass("list"));

        Elements file = posts.select("li");

        System.out.println(posts.select("li"));

        

        // li ��� �����͵� �ݺ������� ����(li ��� ���������� ��, li������ŭ �ݺ���)

        // select() : select()�� ���� �� �������� �����Ϳ� ����

        // �������.text() : ������� ���� ��ȯ(�±״� ���Ե��� ����)

        // �������.attr("�Ӽ��̸�") : ������ҿ� "�Ӽ��̸�"�� ���� ���� ��ȯ

        for(Element e : file){

        	System.out.println("Title : " + e.select(".tit a").text());

        	System.out.println("Link : " + e.select(".tit a").attr("href"));

                // ����Ʈ ��ũ�� �̻��ϰ� �ö��ִ� ����� ���ڿ��� �ٵ��� �Ѵ�

                // substring�� ����� ���ϴ� ���ڿ���ŭ �ڸ��� �տ� �ּҺκ��� �ٿ��ָ� ��

            System.out.println("Link : http://www.playdb.co.kr/magazine/" + e.select(".tit a").attr("href").substring(2, 70));

        	System.out.println("Image : " + e.select(".thumb img").attr("src"));

        	System.out.println("text : " + e.select(".txt").text());

        	System.out.println();

        }

%>

</body>

</html>