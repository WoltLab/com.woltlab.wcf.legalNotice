{capture assign='contentDescription'}{lang}wcf.legalNotice.description{/lang}{/capture}

{include file='header'}

<section class="section">
	<h2 class="sectionTitle">{lang}wcf.legalNotice.general{/lang}</h2>
	
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
			<dd><a href="tel:{LEGAL_NOTICE_PHONE|rawurlencode}">{LEGAL_NOTICE_PHONE}</a></dd>
		{/if}
		
		{if LEGAL_NOTICE_FAX}
			<dt>{lang}wcf.legalNotice.fax{/lang}</dt>
			<dd><a href="tel:{LEGAL_NOTICE_FAX|rawurlencode}">{LEGAL_NOTICE_FAX}</a></dd>
		{/if}
		
		{if LEGAL_NOTICE_REPRESENTATIVE}
			<dt>{lang}wcf.legalNotice.representative{/lang}</dt>
			<dd>{LEGAL_NOTICE_REPRESENTATIVE}</dd>
		{/if}
		
		{if LEGAL_NOTICE_RESPONSIBLE_FOR_CONTENT}
			<dt>{lang}wcf.legalNotice.responsibleForContent{/lang}</dt>
			<dd>{@LEGAL_NOTICE_RESPONSIBLE_FOR_CONTENT|language|newlineToBreak}</dd>
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
</section>

{if LEGAL_NOTICE_ADDITIONAL_TEXT}
	<section class="section">
		<h2 class="sectionTitle">{lang}wcf.legalNotice.additionalText{/lang}</h2>
		
		<div class="htmlContent">
			{if LEGAL_NOTICE_ADDITIONAL_TEXT_ENABLE_HTML}{@LEGAL_NOTICE_ADDITIONAL_TEXT|language}{else}{@LEGAL_NOTICE_ADDITIONAL_TEXT|language|newlineToBreak}{/if}
		</div>
		
		{event name='additionalTextFields'}
	</section>
{/if}

{event name='sections'}

{include file='footer'}
