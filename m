Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 510C010CDDF
	for <lists+linux-um@lfdr.de>; Thu, 28 Nov 2019 18:27:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=41skfkplxFQauJO9/1PcAW5BYs748yQv+B4k5hzfEsg=; b=GCY+tnbbRKakUM
	8xFyE2weJ1pTkbC/R9I/ptumURn5XgByFHQxURQoyNXgucN48bmDrtTAwMTwnlm/gNs02zZjt+exm
	d6OhhletYuZVkY7RtAP8wy/aage1pRPYxIVUByrnrNhW322OZ3/vY6ucg4Zub+1vzlBZU/xQ7L9oO
	huQnHJ4Akx9987wv8DP5YBPn5a/IuyGWuutJON7DwOhAxbkNfyIRE9P3eb5ZeDYwL+2es9TqPyumG
	OZYIYdKZq2/Dcu6+472fi69Dpl8+sqAHFdFXTtqlXDAMR2F7ZtJ7EemjxLwLClchEcTLEtRExnkVU
	D/VIBh6jARvShFMm2yag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaNZj-0006VD-9c; Thu, 28 Nov 2019 17:27:31 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaNZg-0006UD-9Y
 for linux-um@lists.infradead.org; Thu, 28 Nov 2019 17:27:29 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iaNZd-0007VW-0R
 for linux-um@lists.infradead.org; Thu, 28 Nov 2019 17:27:25 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>) id 1iaNZa-0000nA-Re
 for linux-um@lists.infradead.org; Thu, 28 Nov 2019 17:27:24 +0000
To: linux-um <linux-um@lists.infradead.org>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: I get 5.4 fail to start
Message-ID: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
Date: Thu, 28 Nov 2019 17:27:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_092728_334433_76C29806 
X-CRM114-Status: UNSURE (   4.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.4 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi all,

I get 5.4 fail to start. 5.4 gives:

Checking that ptrace can change system call numbers...check_ptrace : 
child exited with exitcode 6, while expecting 0; status 0x67f
Aborted

And stops right at the very start.

I do not recall anything there changing in the 5.2 - 5.4 timeframe so 
this is weird.

Ideas?

-- 

Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
