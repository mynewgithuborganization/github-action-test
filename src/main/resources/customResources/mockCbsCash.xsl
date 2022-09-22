<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->

		<cas:CashRechargeResultMsg
			xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
			xmlns:cas="http://www.huawei.com/bme/cbsinterface/cashrechargemgr"
			xmlns:com="http://www.huawei.com/bme/cbsinterface/common"
			xmlns:cas1="http://www.huawei.com/bme/cbsinterface/cashrecharge">
			<ResultHeader>
				<com:CommandId>cashRecharge</com:CommandId>
				<com:Version>1</com:Version>
				<com:TransactionId>1</com:TransactionId>
				<com:SequenceId>1</com:SequenceId>
				<com:ResultCode>405000000</com:ResultCode>
				<com:ResultDesc>Operation is successful.</com:ResultDesc>
				<com:OrderId>1403100003308344126</com:OrderId>
				<com:OperationTime>20211026184418</com:OperationTime>
			</ResultHeader>
			<CashRechargeResult>
				<cas1:NewBalance>29600</cas1:NewBalance>
				<cas1:NewActiveStop>20211124</cas1:NewActiveStop>
				<cas1:ValidityPeriod>0</cas1:ValidityPeriod>
				<cas1:ExtraValidity>0</cas1:ExtraValidity>
				<cas1:LoanAmount>0</cas1:LoanAmount>
				<cas1:LoanPoundage>0</cas1:LoanPoundage>
				<cas1:BalanceValidity>20211124</cas1:BalanceValidity>
				<cas1:TaxAmt>0</cas1:TaxAmt>
			</CashRechargeResult>
		</cas:CashRechargeResultMsg>

	</xsl:template>
</xsl:stylesheet>