Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6392510D714
	for <lists+linux-um@lfdr.de>; Fri, 29 Nov 2019 15:34:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/tFemVZxAmD28rW29rI4pq5kmFSSUfmR42J+CnHY6yA=; b=D7SO1SReqilSRa
	4OJZeMxyoYw/YPDm1IvUKywEaYHtlgxB2qC6E9f1fDEncsUgdCrZ+p5qKboiJ1Ds8JyJIaMGd38TK
	6qscaFkL3okmnGqPktTq3e3MOELbz+uqspr3JIqukqiWcAO0Sr+ZRfmPiXJiqPTV/N+oT7SMzkBTh
	ba4Znqs7mAiA6AIknpd/1alSpo8KafCVxI6C8/ErDgW5iepMmUFLHei1B0wcrgRbXVa6j5N/RBZ0E
	SFo9yIGqOqav0MCvXXxvG1GZoeVYNGq61M3GSs6lT/5ojsF4+8i3gKfh/qEd39kloisAExS6dOOfY
	zAnFoaHxVTnyha/bgtEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iahLW-0006uP-HP; Fri, 29 Nov 2019 14:34:10 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahLS-0006tx-Tk
 for linux-um@lists.infradead.org; Fri, 29 Nov 2019 14:34:08 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iahLQ-0002MS-2B
 for linux-um@lists.infradead.org; Fri, 29 Nov 2019 14:34:04 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>) id 1iahLN-0000Mc-S8
 for linux-um@lists.infradead.org; Fri, 29 Nov 2019 14:34:03 +0000
To: linux-um <linux-um@lists.infradead.org>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: 64 bit time regression in recvmmsg()
Message-ID: <3820d68b-1d97-8f41-d55d-237d1695458c@cambridgegreys.com>
Date: Fri, 29 Nov 2019 14:34:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_063406_960590_0A8807EA 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Unfortunately, it looks like the recent year 2038 have broken 
compatibility for one particular syscall interface we use - recvmmsg.

The host now occasionally returns -22 (EINVAL) and the only way I see 
for this to happen looking at the source is if when it gets something 
bogus as a timeout.

I think I have eliminated all other possible sources for this error.

The picture can be observed when using a 64 bit host 5.2 kernel on a 
Debian 64 bit buster userspace (glibc compiled vs 4.19 headers).

The code as it is written at present retries and by sheer luck and 
perseverance it manages to work, but this needs to be fixed.

Brgds,
-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
