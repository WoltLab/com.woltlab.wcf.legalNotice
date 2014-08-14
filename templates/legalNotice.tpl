{include file='documentHeader'}

<head>
	<title>{lang}wcf.legalNotice.title{/lang} - {PAGE_TITLE|language}</title>
	
	{include file='headInclude'}
	
	<link rel="canonical" href="{link controller='LegalNotice'}{/link}" />
</head>

<body id="tpl{$templateName|ucfirst}" data-template="{$templateName}" data-application="{$templateNameApplication}">

{include file='header'}

<header class="boxHeadline">
	<h1>{lang}wcf.legalNotice.title{/lang}</h1>
	<p>{lang}wcf.legalNotice.description{/lang}</p>
</header>

{include file='userNotice'}

<div class="container containerPadding marginTop">
	<fieldset>
		<legend>{lang}wcf.legalNotice.general{/lang}</legend>
		
		<dl>
			{if LEGAL_NOTICE_ADDRESS}
				<dt>{lang}wcf.legalNotice.address{/lang}</dt>
				<dd>{@LEGAL_NOTICE_ADDRESS|language|newlineToBreak}</dd>
			{/if}
			
			{if $encodedEmailAddress}
				<dt>{lang}wcf.legalNotice.emailAddress{/lang}</dt>
				<dd><a href="mailto:{@$encodedEmailAddress}">{@$encodedEmailAddress}</a></dd>
			{/if}
			
			{if LEGAL_NOTICE_PHONE}
				<dt>{lang}wcf.legalNotice.phone{/lang}</dt>
				<dd>{LEGAL_NOTICE_PHONE}</dd>
			{/if}
			
			{if LEGAL_NOTICE_FAX}
				<dt>{lang}wcf.legalNotice.fax{/lang}</dt>
				<dd>{LEGAL_NOTICE_FAX}</dd>
			{/if}
			
			{if LEGAL_NOTICE_REPRESENTATIVE}
				<dt>{lang}wcf.legalNotice.representative{/lang}</dt>
				<dd>{LEGAL_NOTICE_REPRESENTATIVE}</dd>
			{/if}
			
			{if LEGAL_NOTICE_REGISTER}
				<dt>{lang}wcf.legalNotice.register{/lang}</dt>
				<dd>{LEGAL_NOTICE_REGISTER}</dd>
			{/if}
			
			{if LEGAL_NOTICE_VAT_ID}
				<dt>{lang}wcf.legalNotice.vatID{/lang}</dt>
				<dd>{LEGAL_NOTICE_VAT_ID}</dd>
			{/if}
		</dl>
		
		{event name='generalFields'}
	</fieldset>
	
	{if LEGAL_NOTICE_ADDITIONAL_TEXT}
		<fieldset>
			<legend>{lang}wcf.legalNotice.additionalText{/lang}</legend>
			
			<div class="htmlContent">
				{if LEGAL_NOTICE_ADDITIONAL_TEXT_ENABLE_HTML}{@LEGAL_NOTICE_ADDITIONAL_TEXT|language}{else}{@LEGAL_NOTICE_ADDITIONAL_TEXT|language|newlineToBreak}{/if}
			</div>
			
			{event name='additionalTextFields'}
		</fieldset>
	{/if}
	
	{event name='fieldsets'}
</div>

{include file='footer'}

</body>
</html>
