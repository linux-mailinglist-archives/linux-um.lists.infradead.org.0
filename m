Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EA3B5F6C
	for <lists+linux-um@lfdr.de>; Wed, 18 Sep 2019 10:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvtGAV5aZghXqMidrOrofUD4ke7mMVltPw96uJvSlF8=; b=sqzOvI9Fsmhsgz
	+nrGGxB45dWE8B+vBr4S58kRoXpbs0rwU6oG1vEN82Wby0/iQqY5ZjSKSR1baQAbvroSxZFhq+g+N
	pc4kcOlzgFzVqzML65l+h8Yv4ToEORyuJRu+Jp9Rx+//h/xEWBlg/E8w+dVgRL+00lK2UZsIiwb67
	1TTnTzhTr2TIdrhRliQFdLW5jdlKm6U1FNy6tJq+wXrFTDDUQanqLzU7PQ5SPOnjyV9eK/nD5jL0p
	7fNZNGhizxIKHXYYerkMQFYyyaGXwIL6UlDap9RkBC3Lt1djh/qzy/Wr18fXwlIIQbL4wN0ZGpNeY
	L9m1jbI5sB+2NiFcAz/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVch-0005mM-1h; Wed, 18 Sep 2019 08:47:39 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVce-0005m1-UI
 for linux-um@lists.infradead.org; Wed, 18 Sep 2019 08:47:38 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iAVcd-0006PX-73; Wed, 18 Sep 2019 10:47:35 +0200
Message-ID: <1e6bd82c6454bd13972d68a2af74779e08462c30.camel@sipsolutions.net>
Subject: Re: CONFIG_COMPAT for UM?
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, 
 linux-um@lists.infradead.org
Date: Wed, 18 Sep 2019 10:47:34 +0200
In-Reply-To: <5dd98ebf-7da7-ec81-ef65-709c009670a2@kot-begemot.co.uk>
References: <60f73376da11640d5b335512f052a583fd784fd8.camel@sipsolutions.net>
 <76d688c3-3d8b-fb59-3ad4-ef8dd9c023be@kot-begemot.co.uk>
 <b3507d24-ebd9-8e7f-25a8-61c1891c37d4@kot-begemot.co.uk>
 <5dad6c3e76e474b9f43df99ea235eb77389ce63f.camel@sipsolutions.net>
 <bd6edd3b-f0e3-c3e8-1b2a-e1395dcaf6aa@kot-begemot.co.uk>
 <06bdd645f5f9832ec37e6e50e12602fa6661cca9.camel@sipsolutions.net>
 <5dd98ebf-7da7-ec81-ef65-709c009670a2@kot-begemot.co.uk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_014736_975856_C3424061 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, 2019-09-18 at 09:32 +0100, Anton Ivanov wrote:
> On 18/09/2019 09:25, Johannes Berg wrote:
> > > > Yeah, I guess I could run as a 32-bit instance, but I'd rather actually
> > > > use a 64-bit instance.
> > > Not if you want to run many of them.
> > Probably not more than a dozen I guess?
> 
> 256

That's a bit more than I was thinking :-)

> > > The 3-level page tables in 64 bit spin up a whole raft threads making it
> > > unfeasible. Compared to that the 32 bit uses 5 threads in total per
> > > instance.
> > I'm probably missing something, how are threads related to page tables?
> 
> Uml memory management spins up a thread every time it creates a level3 
> page table. It is somewhere around kernel/skas

Ah, ok, thanks for the pointer.

> > I can see how that would use more memory, but where do threads come in?
> 
> It is not memory use, it is actually performance and stability on larger 
> machines.
> 
> This is less acute now after the ubd transaction bulking, but it used to 
> be the case that taskset -c 0 ./run-your-uml-testcase was faster to boot 
> a linux system by a factor of 2+ times compared to just leaving all the 
> threads wonder to different CPUs.
> 
> It was even more fun on larger machines. I had a 5 liner script to kill 
> a 2 (or 4) socket Xeon in those days - it died on the 6-9th instance 
> being spun up if they were not being assigned specific NUMA node 
> affinity. It just keeled over - NMIs due to not being able to keep up 
> the cache in sync.

Fun!

Well, I guess if I run into it I'll know what's going on. For now, not
very likely...

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
