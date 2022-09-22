<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->

		<sch:getSubscribersResponse
			xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
			xmlns:sch="http://oss.huawei.com/webservice/external/services/schema"
			xmlns:bas="http://oss.huawei.com/webservice/external/services/basetype/">
			<sch:ResultOfOperationReply>
				<bas:resultCode>0</bas:resultCode>
				<bas:resultMessage>success</bas:resultMessage>
				<bas:transactionId>218457951635766304498</bas:transactionId>
			</sch:ResultOfOperationReply>
			<sch:GetSubscribersReply>
				<bas:getSubscribersResult>
					<bas:subscriberId>2000021547272</bas:subscriberId>
					<bas:customerId>1000021902320</bas:customerId>
					<bas:paidFlag>0</bas:paidFlag>
					<bas:subscriberType>1</bas:subscriberType>
					<bas:msisdn>60104368797</bas:msisdn>
					<bas:imsi>502160000131588</bas:imsi>
					<bas:iccid>89601699011300041588</bas:iccid>
					<bas:subscriberLanguage>2</bas:subscriberLanguage>
					<bas:subscriberSegment>1</bas:subscriberSegment>
					<bas:subscriberStatus>B01</bas:subscriberStatus>
					<bas:createDate>20211026130618</bas:createDate>
					<bas:effectiveDate>20211026130618</bas:effectiveDate>
					<bas:expiryDate>20211106235959</bas:expiryDate>
					<bas:activeDate>20211027085745</bas:activeDate>
					<bas:defaultAcctId>4000021990814</bas:defaultAcctId>
					<bas:telecomType>33</bas:telecomType>
					<bas:smsNotifySettingInfos>
						<bas:eventType>6</bas:eventType>
						<bas:openFlag>true</bas:openFlag>
					</bas:smsNotifySettingInfos>
					<bas:tenure>6</bas:tenure>
				</bas:getSubscribersResult>
			</sch:GetSubscribersReply>
		</sch:getSubscribersResponse>


	</xsl:template>
</xsl:stylesheet>