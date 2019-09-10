Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0922AEC23
	for <lists+linux-um@lfdr.de>; Tue, 10 Sep 2019 15:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KJShpR/z4buGbeh7rRZAMMiCVKMlNcYIDOL5BDTJP5w=; b=btIesPbwAzsNOG
	mMz/zaP1wW+J3fTq2pUhhbmsJRvSnvOhfeYkeJxYsX3DgjW/dxGUfTntF4v9lA1+cv1/2gcBw6kyA
	74z5WQZvMmxDNW1HvTWHP+Lrog6dT3cFSxCX7lRqBJAQ0y4XBsJ+THCfvCHZidZSODX4YoLYdnVME
	DQJnHq1wr0/tlVxS1h0joZbIQHpH9tOfpt7ZRhsx6D16MeZx9Vo2MqPYwUIun3BED28ecc8DEyurQ
	v6Zv/9axTSYLIqbuwMZU5uaKDE7Dcu5sonW0PaX4qXGBbnvzAz47BAeDuyetKntxgqF7cGDlkowu/
	sVzwLJqJor+Jhpa2HGKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gWd-0007Pz-4X; Tue, 10 Sep 2019 13:49:43 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gWX-0007Ie-DA
 for linux-um@lists.infradead.org; Tue, 10 Sep 2019 13:49:38 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1i7gWW-0006dl-4M
 for linux-um@lists.infradead.org; Tue, 10 Sep 2019 15:49:36 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [PATCH v3 0/5] um: virtio support
Date: Tue, 10 Sep 2019 15:49:25 +0200
Message-Id: <20190910134930.22688-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_064937_457797_CBBF3F01 
X-CRM114-Status: UNSURE (   3.21  )
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

Here's a respin of the virtio support series, with much fixed up.

In particular, an uninitialized variable escaped and would have
caused trouble depending on what the value ended up being, it had
to be 0 for everything to work right ...

I've also included patches to implement two extensions that we
want to have, but I kept those separate patches for review.

johannes



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
