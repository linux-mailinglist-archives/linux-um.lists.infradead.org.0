Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EF21B0471
	for <lists+linux-um@lfdr.de>; Mon, 20 Apr 2020 10:30:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNR/ArYWyPIMDLwyo2ANZ6vbOZeyLF4bTGUM0NzNsS0=; b=TFLPyJx5/6QEcN
	BNnpvM6Sddu1EElxpTYSHPr2Ges0BRD/eXZB7izKOQneoniWL4g9t9rGBuu8S7ODKXlGEAbx2C7Vj
	Pf0UpWPQ558q/JTXJJfNWy8uKw/HaO1hxrVdzxImupiZBhtSWa11Yq3z60mx5qLd23pAJpByeW3fJ
	asj7tfTycFSccJvTlEzzuHYEiKpEOeec6YZQzHeohEDnnNB7ZGayiWlNTJUc2HItBWq+9wHs6yfJQ
	XnVRzwSNe9A5iztiIQOczSRW0mpyNGY+FD+ZUHJzg+6KUOhGH60pEl1nd0wm1G1zuPuIA+hz7eqqa
	JqN4LRsI97avmTe4nL1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQRoo-0004yi-JZ; Mon, 20 Apr 2020 08:30:18 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQRol-0004Uz-IY
 for linux-um@lists.infradead.org; Mon, 20 Apr 2020 08:30:17 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jQRog-00Ca2U-HM; Mon, 20 Apr 2020 10:30:10 +0200
Message-ID: <6d00f01fa378b5cb9273e05ab90adc58f6c6ab8f.camel@sipsolutions.net>
Subject: Re: UML HowTo rewrite
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Date: Mon, 20 Apr 2020 10:30:09 +0200
In-Reply-To: <7fbb1a33-5fed-6c61-6c2a-ca47932669a7@cambridgegreys.com>
References: <7fbb1a33-5fed-6c61-6c2a-ca47932669a7@cambridgegreys.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_013015_637935_092AF361 
X-CRM114-Status: UNSURE (   5.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-um@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Anton,

> Can we have a couple of sections on how to use time travel, virtio,
> etc so I can add the to the new howtos?

Yeah, I guess that makes sense, at least for the parts that are actually
done :)

Want to merge it, and I'll add something as patches later? Seems easier
(especially for new content)?

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
