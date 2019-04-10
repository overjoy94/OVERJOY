--- VERSION ---
Eclipse STS
JAVA : 1.6
SPRING : 3.1.1
Spring Mybatis : 3.4.1
SERVER : tomcat v9
DB : oracle 11g
API : 카카오맵, 다음주소

--- ETC ---
자바스크립트 (edit_JS.js) : 회원가입 유효성검사, 주소, 이메일선택
AJAX : 아이디중복확인

* 구현
DB, SERVER 연결
MyBatis_ 어노테이션 기반 환경
xmlns:tx="http://www.springframework.org/schema/tx"
http://www.springframework.org/schema/tx http://www.springframework.org/schema/tx/spring-tx-4.3.xsd
<tx:annotation-driven transaction-manager="transactionManager"/>

web.xml filter encoding
context:component-scan -> @Controller, @Service, @Component

* 구동
maven project로 변경
meta-inf pom.xml -> /pom.xml

DB : sqlplus javauser/1234
      ip기반 정보입력되어있음
      <property name="url" value="jdbc:oracle:thin:@localhost:orcl" />

