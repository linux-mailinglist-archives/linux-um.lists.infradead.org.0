Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A755135CA1
	for <lists+linux-um@lfdr.de>; Thu,  9 Jan 2020 16:23:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNHyWF8jefQ0O7qx40iyHJcg11DaJojXY8aOpASQPG4=; b=OaVPU+8kg4l8sc
	JxNrFrDgqZdDcaxSNPSdSOybCQBUjl9pAOzI6zqFi+xkpU+1go8jmhRcer1aVuEN7q2JXqbGvnEAh
	ZTmi+IqI+PdO4NgrWG2mwoj5al2Xcn+dQpd/hEcwm+bZSkDZSGPs2QVbDsa1SdI8oJp9JF/3zzHp/
	9YOMY2kYBwvk+ySZjkHAUZHg+CmEtjMA5PPiggC+5ET9e1dxbOUJglFy98652Z3ty/nkWbRyeV4EK
	NoxeFsUt/tQmKc9FwUcJ+jFis4A0pi3HPEOC+th5PfGAB1wSsWttI2dQllsByVa5p/ZawCCjJm01W
	96snNqsem/9FWnD8lapA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZem-0003Ql-P4; Thu, 09 Jan 2020 15:23:32 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZea-00034x-I5; Thu, 09 Jan 2020 15:23:22 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 2F1B1240004;
 Thu,  9 Jan 2020 15:23:04 +0000 (UTC)
Date: Thu, 9 Jan 2020 16:23:03 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v1 2/7] mtd: rawnand: add unspecified HAS_IOMEM dependency
Message-ID: <20200109162303.35f4f0a3@xps13>
In-Reply-To: <20191211192742.95699-3-brendanhiggins@google.com>
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-3-brendanhiggins@google.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_072320_739449_2A823BDE 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, richard@nod.at, jdike@addtoit.com,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, davidgow@google.com,
 anton.ivanov@cambridgegreys.com, Piotr Sroka <piotrs@cadence.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

SGkgQnJlbmRhbiwKCkJyZW5kYW4gSGlnZ2lucyA8YnJlbmRhbmhpZ2dpbnNAZ29vZ2xlLmNvbT4g
d3JvdGUgb24gV2VkLCAxMSBEZWMgMjAxOQoxMToyNzozNyAtMDgwMDoKCj4gQ3VycmVudGx5IENP
TkZJR19NVERfTkFORF9DQURFTkNFIGltcGxpY2l0bHkgZGVwZW5kcyBvbgo+IENPTkZJR19IQVNf
SU9NRU09eTsgY29uc2VxdWVudGx5LCBvbiBhcmNoaXRlY3R1cmVzIHdpdGhvdXQgSU9NRU0gd2Ug
Z2V0Cj4gdGhlIGZvbGxvd2luZyBidWlsZCBlcnJvcjoKPiAKPiBsZDogZHJpdmVycy9tdGQvbmFu
ZC9yYXcvY2FkZW5jZS1uYW5kLWNvbnRyb2xsZXIubzogaW4gZnVuY3Rpb24gYGNhZGVuY2VfbmFu
ZF9kdF9wcm9iZS5jb2xkLjMxJzoKPiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWRlbmNlLW5hbmQt
Y29udHJvbGxlci5jOjI5Njk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGRldm1fcGxhdGZvcm1f
aW9yZW1hcF9yZXNvdXJjZScKPiBsZDogZHJpdmVycy9tdGQvbmFuZC9yYXcvY2FkZW5jZS1uYW5k
LWNvbnRyb2xsZXIuYzoyOTc3OiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBkZXZtX2lvcmVtYXBf
cmVzb3VyY2UnCj4gCj4gRml4IHRoZSBidWlsZCBlcnJvciBieSBhZGRpbmcgdGhlIHVuc3BlY2lm
aWVkIGRlcGVuZGVuY3kuCj4gCj4gUmVwb3J0ZWQtYnk6IEJyZW5kYW4gSGlnZ2lucyA8YnJlbmRh
bmhpZ2dpbnNAZ29vZ2xlLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBCcmVuZGFuIEhpZ2dpbnMgPGJy
ZW5kYW5oaWdnaW5zQGdvb2dsZS5jb20+Cj4gLS0tCgpTb3JyeSBmb3IgdGhlIGRlbGF5LgoKQWNr
ZWQtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+CgpUaGFua3Ms
Ck1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
