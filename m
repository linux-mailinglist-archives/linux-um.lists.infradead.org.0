Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5628B118235
	for <lists+linux-um@lfdr.de>; Tue, 10 Dec 2019 09:28:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tvJzUT4WSa+GDvthJtTEAMsJALjjpo2buMAFQ7SkSCo=; b=jt+KVegTZdu2Eu
	QJc/n7Sr9Q1xBeWeBoOrwPKFqxLWVcuam0UmSmEMggLNDpeYpxe6yKyVWdEKkyDWJQE53DIimPLZ5
	DIbhVg7d/ZYL5h5gMBKhula5WkJwUc72Mi8J258gCxLLz9PhPQY3+VfAXZA/IPEqPzf9uG2JGspFY
	9Mx1q8qfuABoN9mBSV6wahgpS+0MJgkoVG91CRRdA3c6oiy3uiDd5IyzdRpwz8PrT4HomRuCy6nQG
	CkiADoIVH7kSsyMVxBMrUI9RzYDABYxDbp6slMpmBcTcx4hZTFIL4yD5zVENwGSWpdKqj9Z2UI8nI
	gN4FHyNY5hzkVpkjUBxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieasU-0005Cs-Bd; Tue, 10 Dec 2019 08:28:18 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieasR-0005CQ-5c
 for linux-um@lists.infradead.org; Tue, 10 Dec 2019 08:28:16 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1ieasE-000QG4-No; Tue, 10 Dec 2019 09:28:02 +0100
Message-ID: <7da5a054f533eabf2ffa110c236f011bf9d23954.camel@sipsolutions.net>
Subject: Re: [PATCH v1] uml: remove support for CONFIG_STATIC_LINK
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, Richard Weinberger
 <richard@nod.at>, Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 10 Dec 2019 09:28:01 +0100
In-Reply-To: <346757c8-c111-f6cf-21d2-b0bffd41b8a8@cambridgegreys.com>
References: <20191209230248.227508-1-brendanhiggins@google.com>
 <1406826345.111805.1575933346955.JavaMail.zimbra@nod.at>
 <2eecf4dc-eb96-859a-a015-1a4f388b57a2@cambridgegreys.com>
 <346757c8-c111-f6cf-21d2-b0bffd41b8a8@cambridgegreys.com>
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_002815_209915_6F0EE6FC 
X-CRM114-Status: UNSURE (   9.86  )
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
Cc: Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, davidgow@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, 2019-12-10 at 07:34 +0000, Anton Ivanov wrote:

> > Further to this - any properly written piece of networking code which 
> > uses the newer functions for name/service resolution will have the same 
> > problem. You can be static only if you do everything "manually" the old 
> > way.
> 
> The offending piece of code is the glibc implementation of getaddrinfo().
> 
> If you use it and link static the resulting binary is not really static.

However, this (getaddrinfo) really only applies if you use the vector
network driver, if you e.g. use only virtio then this particular problem
isn't present.

Note sure if we implicitly call getaddrinfo from libpcap, but again,
that's just a single driver.

IOW, we could just make CONFIG_STATIC_LINK depend on !VECTOR && !PCAP?

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
