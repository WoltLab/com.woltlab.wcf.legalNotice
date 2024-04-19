<?php

namespace wcf\page;

use wcf\system\email\Mailbox;
use wcf\system\request\LinkHandler;
use wcf\system\WCF;
use wcf\util\StringUtil;

/**
 * Shows the legal notice page.
 *
 * @author  Marcel Werk
 * @copyright   2001-2023 WoltLab GmbH
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

        try {
            $uri = (new Mailbox(LEGAL_NOTICE_EMAIL_ADDRESS))
                ->getAddressForMailto();
        } catch (\DomainException) {
            $uri = LEGAL_NOTICE_EMAIL_ADDRESS;
        }

        WCF::getTPL()->assign([
            'encodedEmailAddress' => StringUtil::encodeAllChars(LEGAL_NOTICE_EMAIL_ADDRESS),
            'encodedUriEmailAddress' => StringUtil::encodeAllChars($uri),
        ]);
    }
}
