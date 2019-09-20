Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1541BB8C5B
	for <lists+linux-um@lfdr.de>; Fri, 20 Sep 2019 10:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RfflAkGgqS2/FP8T9KrFcgJdTKiRfnADrnjrdwh2pPs=; b=gKRmqzexi8PY/r
	XyM5exvo3Av/SNOclyS8NpWqnw9nWjXpEkF1RCnxHmNe7Cl3PoxoXVD/yLYwlpebT2Ry+a0VZw1nH
	2zao/0cAyczH7JPENSXRR4+7d9RUfaReAiQjd75GIWBOM0bo5qaGrE2MIOKlUkP/cgNUsPLMzRpRn
	+CAsOJNpsCsfI2NZtbf4Nn/nl46GVHFeeEwICdtfkyYPbaHVH+AnzRv82fcEZZz40YYsqk9ln/d/E
	HDvAUxzs0MUejNdCaFrar0OwnEg4VHMOAa6bJuGPHVRKL2UzaUngQfDPCQjxkmmft4DxdHQ7ke6Pw
	3oFRvbGgQz+mebvcOBxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBDvx-0005jY-AP; Fri, 20 Sep 2019 08:06:29 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDvt-0005im-KP
 for linux-um@lists.infradead.org; Fri, 20 Sep 2019 08:06:27 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1iBDvn-0004Jq-92
 for linux-um@lists.infradead.org; Fri, 20 Sep 2019 08:06:19 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>) id 1iBDvk-0002Zo-Ub
 for linux-um@lists.infradead.org; Fri, 20 Sep 2019 09:06:18 +0100
To: linux-um@lists.infradead.org
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Subject: Anyone running uml on a 5.x host?
Message-ID: <c5e112ff-3d53-784d-9f3d-38d36e27354a@kot-begemot.co.uk>
Date: Fri, 20 Sep 2019 09:06:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_010625_681738_0136F15A 
X-CRM114-Status: UNSURE (   5.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Has anyone tried to run UML on a 5.2 host?

I get the following on 5.2 from debian testing:

Adding 93823388884992 bytes to physical memory to account for 
exec-shield gap
Too few physical memory! Needed=93823417974784, given=547037904896

The same machine when booted with 4.19 (stock) runs the same UML 
instance just fine.

-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
