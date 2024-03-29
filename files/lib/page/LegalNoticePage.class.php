<?php

namespace wcf\page;

use wcf\system\request\LinkHandler;
use wcf\system\WCF;
use wcf\util\StringUtil;

/**
 * Shows the legal notice page.
 *
 * @author  Marcel Werk
 * @copyright   2001-2022 WoltLab GmbH
 * @license GNU Lesser General Public License <http://opensource.org/licenses/lgpl-license.php>
 */
final class LegalNoticePage extends AbstractPage
{
    public const AVAILABLE_DURING_OFFLINE_MODE = true;

    /**
     * @inheritDoc
     */
    public function readParameters()
    {
        parent::readParameters();

        $this->canonicalURL = LinkHandler::getInstance()->getControllerLink(static::class);
    }

    /**
     * @inheritDoc
     */
    public function assignVariables()
    {
        parent::assignVariables();

        WCF::getTPL()->assign([
            'encodedEmailAddress' => StringUtil::encodeAllChars(LEGAL_NOTICE_EMAIL_ADDRESS),
            'encodedUriEmailAddress' => StringUtil::encodeAllChars(\rawurlencode(LEGAL_NOTICE_EMAIL_ADDRESS)),
        ]);
    }
}
