Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FFDCFCC6
	for <lists+linux-um@lfdr.de>; Tue,  8 Oct 2019 16:49:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4lnZ6xYDYovEVOutcDJ1UM8Eo+RK2rZG8lzmYzN0Sp4=; b=atLVegO447giw0
	BZF3RP33HoODJ05wJtK4zfdaaA04M99g4mdmQS3Pj5xXyKReDoHibPX5Un6wcueFQIUD8UG6TiyiQ
	yJUigRYSJumO8zX5P7i3psaddTavi5Zj0OaFvrUVosBFhA2EjnGDr/T0rtirlepxw8hmof53Bdvxa
	oX8gi4h8a+6gfQgzIhfFhq0cNB/Z+BKbx2NozCQi4nQT/QG6V13SFY+0mhqcIyBTP4Zacf8QI514v
	AE+VgV+4H23NBUZasNpdae0XQPnxP5LQlbE5PSRGyJpdJb+knB0Dvdkhy+ndD6cH2YaU5wVWWu27a
	9u6aFGiEQob5gPbqTelQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqoF-0002uS-F6; Tue, 08 Oct 2019 14:49:55 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqoB-0002tm-JP
 for linux-um@lists.infradead.org; Tue, 08 Oct 2019 14:49:53 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iHqo3-0001Uh-H1; Tue, 08 Oct 2019 16:49:43 +0200
Message-ID: <d967492b4d8f815b9cef806691c021a67f295efd.camel@sipsolutions.net>
Subject: Re: [PATCH 2/2] um: drivers: Add virtio vhost-user driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, 
 linux-um@lists.infradead.org
Date: Tue, 08 Oct 2019 16:49:41 +0200
In-Reply-To: <3cb5a05b-1b63-24e0-be1b-383c7b9230e0@cambridgegreys.com>
References: <20190731202942.29630-1-johannes@sipsolutions.net>
 <20190731202942.29630-2-johannes@sipsolutions.net>
 <50395b43-5952-0df5-b753-b3de4c246ed4@cambridgegreys.com>
 <8718663842671e3d825ccc8eef6f9669a5a85884.camel@sipsolutions.net>
 <3cb5a05b-1b63-24e0-be1b-383c7b9230e0@cambridgegreys.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_074951_639347_B7367016 
X-CRM114-Status: GOOD (  10.86  )
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Erel Geron <erelx.geron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, 2019-10-08 at 15:17 +0100, Anton Ivanov wrote:

> > Or maybe just not allow this to be a module? Then it cannot be loaded
> > from inside, and the command-line must be given from outside, I think?
> > We could change it to use __uml_setup() too.
> 
> That would do it.

I think that's probably easiest then.

> > Perhaps with kexec() it's possible to influence the next kernel's
> > command line though, but that might already be an issue then?
> 
> It is an issue, if kexec works.

I was misremembering the code in main() - it does an exec() of itself
(with unchanged parameters) for a *reboot*. Somehow I associated that
with kexec().

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
