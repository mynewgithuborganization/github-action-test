<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->

		<car:VoucherRechargeResultMsg
			xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
			xmlns:car="http://www.huawei.com/bme/cbsinterface/cardrechargemgr"
			xmlns:com="http://www.huawei.com/bme/cbsinterface/common"
			xmlns:car1="http://www.huawei.com/bme/cbsinterface/cardrecharge"
			xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
			<ResultHeader>
				<com:CommandId>VoucherRecharge</com:CommandId>
				<com:Version>1</com:Version>
				<com:TransactionId>1</com:TransactionId>
				<com:SequenceId>1</com:SequenceId>
				<com:ResultCode>405000000</com:ResultCode>
				<com:ResultDesc>Operation is successful.</com:ResultDesc>
				<com:OperationTime>20210817204428</com:OperationTime>
			</ResultHeader>
			<VoucherRechargeResult>
				<car1:FaceValue>3000</car1:FaceValue>
				<car1:NewBalance>1736393</car1:NewBalance>
				<car1:NewActiveStop>20310802</car1:NewActiveStop>
				<car1:ValidityPeriod>0</car1:ValidityPeriod>
				<car1:BalanceAfterRecharge>0</car1:BalanceAfterRecharge>
				<car1:NewSuspendStopDate xsi:nil="true" />
				<car1:NewDisableStopDate xsi:nil="true" />
				<car1:RechargeBonus>
					<car1:PrmAcctType>2000</car1:PrmAcctType>
					<car1:PrmAmt>3000</car1:PrmAmt>
					<car1:CurrAcctBal>1736393</car1:CurrAcctBal>
					<car1:CurrExpTime>20370101000000</car1:CurrExpTime>
					<car1:ChgExpTime>0</car1:ChgExpTime>
					<car1:MinMeasureId>101</car1:MinMeasureId>
				</car1:RechargeBonus>
				<car1:ExtraValidity>0</car1:ExtraValidity>
				<car1:LoanAmount>0</car1:LoanAmount>
				<car1:LoanPoundage>0</car1:LoanPoundage>
				<car1:LoanRecovered>0</car1:LoanRecovered>
				<car1:BalanceValidityPeriod>0</car1:BalanceValidityPeriod>
				<car1:UserDays>0</car1:UserDays>
				<car1:TaxAmt>0</car1:TaxAmt>
			</VoucherRechargeResult>
		</car:VoucherRechargeResultMsg>


	</xsl:template>
</xsl:stylesheet>