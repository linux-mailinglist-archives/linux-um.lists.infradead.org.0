Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6FDAFD95
	for <lists+linux-um@lfdr.de>; Wed, 11 Sep 2019 15:18:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=947RhcSL36ZG1bjjlHywryTmBXXDN0uyl0HrJqsaQ7Y=; b=fAuY42I1cc78d4
	m+FMPPpmUuZbXGSUaSpQ/o+8EadIoUI+n5nSILRTsSAx7tha+SORXd8jyN2wkjd9+BO1suH8gPG/f
	fqVSunpLZ3/QVR3f3LI4I5UgQoawHAU4efbv9tuCyjV3XfhwL2E3S4HKayNfzj/If4rqzTCjmT8sQ
	9HXjElnntn0elCe+eWwMJHqCcBWl0NHSc33Cu9grSyZZMF6MtHdmwIfAqDl8ne4LXsfgHl5odkNjx
	bASSxtj3BzZFVSEgtV0BGzP2bUlDdQvFWdLy5S9Et7dUuDXFKNUiL9CWKR1HUGu0w1xeKb4htv0YR
	ubCQPV216L49tbD3yiDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i82W4-00061N-Mi; Wed, 11 Sep 2019 13:18:36 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i82W2-0005xC-08
 for linux-um@lists.infradead.org; Wed, 11 Sep 2019 13:18:35 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i82W0-0008GF-CF; Wed, 11 Sep 2019 15:18:32 +0200
Message-ID: <2b6ac17c16113892e27e82df9802264ef934d4d8.camel@sipsolutions.net>
Subject: Re: [PATCH v5 0/5] um: virtio support
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org, Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Date: Wed, 11 Sep 2019 15:18:31 +0200
In-Reply-To: <20190911125122.20772-1-johannes@sipsolutions.net>
References: <20190911125122.20772-1-johannes@sipsolutions.net>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_061834_055194_50B79E4F 
X-CRM114-Status: UNSURE (   6.06  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, 2019-09-11 at 14:51 +0200, Johannes Berg wrote:
> Yet another respin, with a small fix in the virtio platform data
> freeing code.

I'm getting to the "tiny little fixes" territory, so would appreciate if
you could give it a spin again.

I think quite possibly much of the issues you saw were just from the
uninitialized variable we had in one of the early versions, and
regardless of that the error messages should be more verbose now.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
