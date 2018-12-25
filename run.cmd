(
cd sample-hystrix-eureka
start mvn spring-boot:run	 -DskipTests 
) &
(
rem Start up Config server
cd sample-hystrix-config
start mvn spring-boot:run	 -DskipTests
) &
(
rem Start up Sample Service
cd sample-hystrix-service
start mvn spring-boot:run	 -DskipTests
) &
rem Start up Aggregate Application
cd sample-hystrix-aggregate
start mvn spring-boot:run	 -DskipTests

rem Start up Gateway Application
cd sample-hystrix-gateway
start mvn spring-boot:run	 -DskipTests

rem Start up Monitoring Application
cd sample-hystrix-monitor
start mvn spring-boot:run	 -DskipTests