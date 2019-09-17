Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D1CB4F71
	for <lists+linux-um@lfdr.de>; Tue, 17 Sep 2019 15:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=St4dOSSfwcY6PERe0fz9fk/zRuV76zYt2K8MpHmHpak=; b=MlauvWLegzxHXa
	n88ubLjizA81WmLADRVNFHAKDmb/AbTtQaUgC3iuySnixmB9wJx+pN5WHVhCc8C4DknpFy6KILJDy
	YZKGMv+QkUPfhq0NOgGVHFIFi/YYigtV8Tmd4Z7GRdni4qjiZEWHEKzmMlmP0kDAZtWf17T6LXhVr
	jn1JtioGDI0pApdTbzJ4H5cev9XjjFDIUpuIj/n9BX/RDDAbhsQuYZRuYHo4FARBDhIEi/cAZY0Z/
	7pPETAYCnlo8mhV1VcJ+CmUmzCF79z5hmB//GWynbX4ar0yPvjIH65wGxVruet/XRVCihrlkudXiF
	zpA3fCOIfNOtb3tUFqkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADgG-0005Tn-5M; Tue, 17 Sep 2019 13:38:08 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADgC-0005St-A0
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 13:38:06 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1iADgB-0005QD-0G
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 15:38:03 +0200
Message-ID: <b88710e3eb352ff7f3f1df3a812e51e367d020f8.camel@sipsolutions.net>
Subject: Re: [RFC v3 2/2] um: implement time-travel=ext
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Tue, 17 Sep 2019 15:38:01 +0200
In-Reply-To: <1568726354-I0c06fae89d77d5b272dfb4c7ea64641b597b5c7b@changeid>
References: <20190917132943.20102-1-johannes@sipsolutions.net>
 <1568726354-I0c06fae89d77d5b272dfb4c7ea64641b597b5c7b@changeid>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_063804_359482_4C214E9A 
X-CRM114-Status: UNSURE (   3.47  )
X-CRM114-Notice: Please train this message.
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

Forgot to say though - overall I'm MUCH happier with this than with the
virtio-based device. It's about 30% faster (as I said before), and both
sides of the communication channel are significantly less complex.

In particular, also, we need much less changes to virtio_uml.c since we
can still rely on getting signals and -EINTR in poll() even while we
talk over the timing channel but get a virtio message.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
