Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D02DC06A
	for <lists+linux-um@lfdr.de>; Fri, 18 Oct 2019 10:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFC5d3i3SDa/n+J5F3DRSwn3023ytmWPDYNwFHZ7kjo=; b=E6YKd46YOt4i85
	iInAeY0T/K7n4F3cxerXNK5lDDHms4kBhquDxQoqKA2JLlKpuoiK1+paUpU+4omlhw1T1uIqeYWPW
	4xgp2gdnfS7qmQz7b81saOMs2SOcBFah+y704UKSj+V+m6+lVqPocYCoBdbRcBXpgVyvcrQzn6Bkn
	iTrMpDlJvZZiMk/S/Wl5DDYClmo3X6hQN4ggv/oIZNs/bF4ZIbp31Htoor6K9yUYAk8sB3huEVScj
	eYeoOGH0gQZQ7LXVQdgr3rZTHE9VeduGVvciFhCSc6Ts2mL2vpobDDUvDJC1g31yLpB+006Ol0535
	XwolQvJERZ5U0qrrwk6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLO4a-00029J-K5; Fri, 18 Oct 2019 08:57:24 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLO4X-00028d-Tb
 for linux-um@lists.infradead.org; Fri, 18 Oct 2019 08:57:23 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iLO4S-0006R5-3K; Fri, 18 Oct 2019 10:57:16 +0200
Message-ID: <7a2c14d38873a5c19f395cc7861fd9811589ca79.camel@sipsolutions.net>
Subject: Re: uml segfault during I/O
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, rrs@researchut.com, 
 linux-um@lists.infradead.org
Date: Fri, 18 Oct 2019 10:57:15 +0200
In-Reply-To: <b742bf38-9cf5-e62f-55df-915929fd526f@cambridgegreys.com>
References: <a1307b17bd3f51d84d9195760492d1ef284b6382.camel@researchut.com>
 <1ccf27d8-6b6a-7d08-acef-93077f07511b@cambridgegreys.com>
 <5dc5e0694d2fcf2f8bb083e3861fd1b39c768b8c.camel@researchut.com>
 <cf1294b2-e1cc-961c-e8e1-d070fe0ea94d@cambridgegreys.com>
 <c7135e15-d2e4-3bce-9584-9032ddca72fe@cambridgegreys.com>
 <4892b3ca-6b26-0b96-d21f-ac8b31fb2270@cambridgegreys.com>
 <b742bf38-9cf5-e62f-55df-915929fd526f@cambridgegreys.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_015721_956756_3330A08C 
X-CRM114-Status: UNSURE (   6.34  )
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

On Fri, 2019-10-18 at 08:35 +0100, Anton Ivanov wrote:
> 
> Still happening with 5.2.21, albeit a bit more difficult to reproduce.

Just randomly reviewing the code, isn't there a bug in io_thread()?

--- a/arch/um/drivers/ubd_kern.c
+++ b/arch/um/drivers/ubd_kern.c
@@ -1602,7 +1602,8 @@ int io_thread(void *arg)
                written = 0;
 
                do {
-                       res = os_write_file(kernel_fd, ((char *) io_req_buffer) + written, n);
+                       res = os_write_file(kernel_fd, ((char *) io_req_buffer) + written,
+                                           n - written);
                        if (res >= 0) {
                                written += res;
                        }

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
