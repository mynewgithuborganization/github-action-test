package com.demo.greet.githubaction.route;

import org.apache.camel.builder.RouteBuilder;

import org.apache.camel.model.rest.RestBindingMode;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;


@Component
public class RestConsumerRoute extends RouteBuilder {

    @Value("${api.port}")
    private String apiPort;
    @Value("${api.scheme}")
    private String apiScheme;
    @Value("${api.contextpath}")
    private String apiContextPath;
    @Value("${api.path}")
    private String apiPath;
    

    @Override
    public void configure() throws Exception {

        onException(Exception.class).handled(true)
        .log("View the exception message: ExceptionMessage: ${exception.message}");

        restConfiguration()
        .component("jetty")
        .port(apiPort)
        .scheme(apiScheme)
        .contextPath(apiContextPath)
        .bindingMode(RestBindingMode.off);

        rest(apiPath)
        .get()
        .produces("application/json")
        .route()
        .routeId("_helloRouteId")
        .log("Hello ${header.name}!!!")
        .setBody(simple("Hello ${header.name}!!!"))
        ;
    }
}
