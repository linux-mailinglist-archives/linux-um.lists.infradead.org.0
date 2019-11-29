Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECF610D297
	for <lists+linux-um@lfdr.de>; Fri, 29 Nov 2019 09:48:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vQG0wJtrdaRN/L3+oz9C0xPFv4OJGttTpuPgwTVEqnQ=; b=dFNc9lq4nX3W7pimc18+t5ypU
	28/e+ooVUuF8YpQ8nTkTldh4dCoK4tuumsrkQtI4GCVI05sP5A2xTpQ7cDXWOyIUEiVKc1jP+eR0v
	vjkrL2DcCzgy3cbaKKYRCXYw3xI4yuNUEHTiigDFQly0SKF1Q4WYw5hbEXFendDoq9AGe+WYDzYyK
	j2ivCRpkeevOfZhARnQY9TNjEaitKgZuuXwM9zYA/5C27+RVG+sGMJp/4LzRdMilblrCz246YcEFk
	c7coef0qztJMXfTMzWjSOqAwmfwple5dpJoGzCW4BAi/q5YMLbvZ3OyU6i6CrWSXkyX/MfL3uqUx8
	gQTpG8upA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iabwY-0002AL-Re; Fri, 29 Nov 2019 08:48:02 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iabwW-00029Q-06
 for linux-um@lists.infradead.org; Fri, 29 Nov 2019 08:48:01 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iabwP-0001X6-7r
 for linux-um@lists.infradead.org; Fri, 29 Nov 2019 08:47:53 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>) id 1iabwN-0000rZ-2Z
 for linux-um@lists.infradead.org; Fri, 29 Nov 2019 08:47:53 +0000
Subject: Re: I get 5.4 fail to start
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
To: linux-um <linux-um@lists.infradead.org>
References: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
Message-ID: <f0f44705-5c43-89b8-ecd8-1dba5e073f8d@cambridgegreys.com>
Date: Fri, 29 Nov 2019 08:47:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_004800_035827_3ABEF228 
X-CRM114-Status: GOOD (  10.47  )
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



On 28/11/2019 17:27, Anton Ivanov wrote:
> Hi all,
> 
> I get 5.4 fail to start. 5.4 gives:
> 
> Checking that ptrace can change system call numbers...check_ptrace : 
> child exited with exitcode 6, while expecting 0; status 0x67f
> Aborted
> 
> And stops right at the very start.
> 
> I do not recall anything there changing in the 5.2 - 5.4 timeframe so 
> this is weird.
> 
> Ideas?
> 

Two problems:

1. The code in stop_ptraced_child is wrong

if (!WIFEXITED(status) || (WEXITSTATUS(status) != exitcode))

This is incorrect - you can use the WEXITSTATUS(status) macro only if 
WIFEXITED(status) has returned true.

2. The second problem is that for whatever reason after going to 5.4 
that stopped returning true. No idea what's happening there.

After I fix (1), I get everything to work as intended.

I am going to play a bit with a patch which addresses (1) and submit it 
if I am happy with it. If anyone has any ideas about (2) - please shout.

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
