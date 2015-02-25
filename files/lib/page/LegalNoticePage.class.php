<?php
namespace wcf\page;
use wcf\system\WCF;
use wcf\util\StringUtil;

/**
 * Shows the legal notice page.
 * 
 * @author	Marcel Werk
 * @copyright	2001-2015 WoltLab GmbH
 * @license	GNU Lesser General Public License <http://opensource.org/licenses/lgpl-license.php>
 * @package	com.woltlab.wcf.legalNotice
 * @subpackage	page
 * @category	Community Framework
 */
class LegalNoticePage extends AbstractPage {
	const AVAILABLE_DURING_OFFLINE_MODE = true;
	
	/**
	 * @see	\wcf\page\AbstractPage::$activeMenuItem
	 */
	public $activeMenuItem = 'wcf.footer.menu.legalNotice';
	
	/**
	 * @see	\wcf\page\IPage::assignVariables()
	 */
	public function assignVariables() {
		parent::assignVariables();
		
		WCF::getTPL()->assign(array(
			'encodedEmailAddress' => StringUtil::encodeAllChars(LEGAL_NOTICE_EMAIL_ADDRESS),
			'allowSpidersToIndexThisPage' => true
		));
	}
}
