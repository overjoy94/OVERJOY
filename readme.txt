--- VERSION ---
Eclipse STS
JAVA : 1.6
SPRING : 3.1.1
Spring Mybatis : 3.4.1
SERVER : tomcat v9
DB : oracle 11g
API : īī����, �����ּ�

--- ETC ---
�ڹٽ�ũ��Ʈ (edit_JS.js) : ȸ������ ��ȿ���˻�, �ּ�, �̸��ϼ���
AJAX : ���̵��ߺ�Ȯ��

* ����
DB, SERVER ����
MyBatis_ ������̼� ��� ȯ��
xmlns:tx="http://www.springframework.org/schema/tx"
http://www.springframework.org/schema/tx http://www.springframework.org/schema/tx/spring-tx-4.3.xsd
<tx:annotation-driven transaction-manager="transactionManager"/>

web.xml filter encoding
context:component-scan -> @Controller, @Service, @Component

* ����
maven project�� ����
meta-inf pom.xml -> /pom.xml

DB : sqlplus javauser/1234
      ip��� �����ԷµǾ�����
      <property name="url" value="jdbc:oracle:thin:@localhost:orcl" />

