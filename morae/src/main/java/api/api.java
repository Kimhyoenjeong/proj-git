package api;

import java.io.BufferedReader;

public class api {
	public static void main(String[]args) {
		
		//�����̿�: BufferedReader-->���۸� �̿��ؼ� �а� ���� �Լ�
		//����(Buffer):����� �ӵ� ����� ���� �Ͻ������� �޸� ������ �Ѱ��� ��Ƶδ� ��
		//������ ����: ���۸� �̿��ϱ� ������ ����� ���� ó���۾��� �ſ� ������ �� �� �ִ�.
		BufferedReader br = null;
		try {
			//������ �������� �־ �ּ�ü�踦 �������Ѵٸ� StringBuilder���
			//String:�Һ�(immutable)���� �����Ƿ� ���ڿ��� ���� �� �Ź� ���ο� ��ü�� �����ؼ� �����ϴ� ��� --> �� ����x
			//StringBuilder:���ڿ��� ���� ���� �� ���ο� ��ü�� �Ź� �����ϴ� ���� �ƴ϶� ���� ������ ���� �߰��ذ��� ���.�ӵ��� ����
			//				mutable�Ӽ�, append(),insert(),delete()���� ����ؼ� ����.
			//���� ����api StringBuilder�����
			String key="eea6bfd53ad8704dd9e52ad1e283cef07458d32ef00185ddd6d4e7a23b22bef0";
			String urlStr="http://192.168.206.1:8080/openapi/API_KEY=eea6bfd53ad8704dd9e52ad1e283cef07458d32ef00185ddd6d4e7a23b22bef0/xml/Grid_20200713000000000605_1/1/5";
		}
		catch(Exception e) {
			System.out.print(e.getMessage());
		}
		
	}
}