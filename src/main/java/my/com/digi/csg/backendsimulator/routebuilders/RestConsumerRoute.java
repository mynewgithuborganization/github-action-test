package my.com.digi.csg.backendsimulator.routebuilders;

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
    @Value("${api.post.crmSubscriber.path}")
    private String apiPostCrmSubscriberPath;
    @Value("${api.post.crmMsisdnBeid.path}")
    private String apiPostCrmMsisdnBeidPath;
    @Value("${api.post.cpp.path}")
    private String apiPostCppPath;
    @Value("${api.get.csg_2.path}")
    private String apiGetCsg2Path;
    @Value("${api.get.orderQuery.path}")
    private String apiGetorderQuery;
    @Value("${api.post.cbsCash.path}")
    private String apiPostCbsCashPath;
    @Value("${api.post.cbsVoucher.path}")
    private String apiPostCbsVoucherPath;
    @Value("${api.get.csg_2.path}")
    private String apiPostSubmitOrder;
    @Value("${api.get.retrievesubscriber.path}")
    private String apiRetrieveSubscriber;

    @Override
    public void configure() throws Exception {

        onException(javax.xml.parsers.ParserConfigurationException.class,
        org.xml.sax.SAXException.class, java.io.IOException.class,
        javax.xml.xpath.XPathExpressionException.class,
        java.lang.NullPointerException.class,Exception.class).handled(true)
        .log("X-Request-Id: ${header.X-Request-Id}, ExceptionMessage: ${exception.message}");

        restConfiguration()
        .component("jetty")
        .port(apiPort)
        .scheme(apiScheme)
        .contextPath(apiContextPath)
        .bindingMode(RestBindingMode.off);

        rest(apiPostCrmSubscriberPath)
        .post()
        .consumes("application/xml")
        .produces("application/xml")
        .route()
        .routeId("_crmSubscriberRouteId")
        .log("inside crmSubscriberRoute: ${header.X-Request-Id}")
        .to("xslt:customResources/mockCrmGetSubscriber.xsl");
        
        rest(apiPostCrmMsisdnBeidPath)
        .post()
        .consumes("application/xml")
        .produces("application/xml")
        .route()
        .routeId("_crmMsisdnBeidRouteId")
        .log("inside crmMsisdnBeidRoute: ${header.X-Request-Id}")
        .to("xslt:customResources/mockCrmGetMsisdnBeid.xsl");
        
        rest(apiPostCppPath)
        .post()
        .consumes("application/xml")
        .produces("application/xml")
        .route()
        .routeId("_cppRouteId")
        //.delay(simple("{{cppDelay}}"))
        .to("xslt:customResources/mockCppPayment.xsl");
        
        rest(apiGetCsg2Path)
        .get()
        .consumes("application/json")
        .produces("application/json")
        .route()
        .routeId("_csg2RouteId")
        //.setHeader("ErrorCode",constant(""))
        //.delay(simple("{{csg2Delay}}"))
        .to("velocity:customResources/mockCsg2.vm");
        
        rest(apiGetorderQuery)
        .get()
        .consumes("application/json")
        .produces("application/json")
        .route()
        .routeId("_orderQueryRouteId")
        .setHeader("ErrorCode",constant(""))
        .delay(simple("{{csg2Delay}}"))
        .to("velocity:customResources/mockCsg3.vm");
        
        rest(apiPostCbsCashPath)
        .post()
        .consumes("application/xml")
        .produces("application/xml")
        .route()
        .routeId("_cbsCashRouteId")
        .log("inside cbsCashRoute: ${header.X-Request-Id}")
        .to("xslt:customResources/mockCbsCash.xsl");
        
        rest(apiPostCbsVoucherPath)
        .post()
        .consumes("application/xml")
        .produces("application/xml")
        .route()
        .routeId("_cbsVoucherRouteId")
        .log("inside cbsVoucherRoute: ${header.X-Request-Id}")
        .to("xslt:customResources/mockCbsVoucher.xsl");
//added        
        rest(apiPostSubmitOrder)
        .post()
        .consumes("application/json")
        .produces("application/json")
        .route()
        .routeId("_submitOrder")
        .setHeader("ErrorCode",constant(""))
        .delay(simple("{{csg2Delay}}"))
        .to("velocity:customResources/mockCsg4.vm");
        
        rest(apiRetrieveSubscriber)
        .get()
        .produces("application/json")
        .route()
        .routeId("_apiRetrieveSubdcriberRouteId")
        .to("velocity:customResources/mockRetrieveSubscriberResponse.vm");

    }
}
