Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06C04343C
	for <lists+linux-um@lfdr.de>; Thu, 13 Jun 2019 10:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKlGJk23eCvYupCkNON0ppjNHvabp5arZP3CgnVkq84=; b=Zp0eYaLsQexfZN
	Wnr1OHsosZW9EC9vleebABaTTWj7ohlkdBtMf2xmsnfJt6mrpauVG+xSpZsCrkhSh+bSTw2vAMEUA
	385d0LcOwgdn95vxmD9pTADaWYBCLFXmBLtb6fF/jkiHaI8k9vQ491gkMrTeS7BK30LBnEL/CBS/2
	sJwVW//OD23STLFukKSfpZw8MGcZhPzI6+YbnCStb8NoWr65jUhWGIjVuCMfeea2op3MpdMSeMFqC
	pspvvzMahUJzEfZQuuSy5pkN/QvT95EOLuEEYa5sbmOuPfHMBm0Cw93bz460RKfAQKJ6e97igXQ4p
	GMfyl0aP04IjrJ6tqtMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLIe-0002Zt-Pt; Thu, 13 Jun 2019 08:41:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLIb-0002ZD-RU
 for linux-um@lists.infradead.org; Thu, 13 Jun 2019 08:41:35 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1404621473;
 Thu, 13 Jun 2019 08:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560415293;
 bh=61GBweix5UTf8kAg2xGTzl6CpAUhZk7wGiUDyCDQ2sA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PRqTWbyQP2BXLAvx7+SrCP5m940i8tdswAeGeQcWQs1cFnxuBqVuKnC4Je69jnPYK
 bW/f09Qw+l+qbscEww78Z7be1fdxN+8XVRNwi1gzYXmQ+763nLJ8VfSDXjtg6H0sRc
 ksYNLGU6XSJgV1plB3wpa9a0NQ4k8CICVrGUHhpI=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.19 044/118] uml: fix a boot splat wrt use of cpu_all_mask
Date: Thu, 13 Jun 2019 10:33:02 +0200
Message-Id: <20190613075646.294833490@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190613075643.642092651@linuxfoundation.org>
References: <20190613075643.642092651@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_014133_926590_F3A8B902 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 =?UTF-8?q?Maciej=20=C5=BBenczykowski?= <maze@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, stable@vger.kernel.org,
 Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

WyBVcHN0cmVhbSBjb21taXQgNjg5YTU4NjA1YjYzMTczYWNiMGE4Y2Y5NTRhZjZhOGY2MDQ0MGM5
MyBdCgpNZW1vcnk6IDUwOTEwOEsvNTQyNjEySyBhdmFpbGFibGUgKDM4MzVLIGtlcm5lbCBjb2Rl
LCA5MTlLIHJ3ZGF0YSwgMTAyOEsgcm9kYXRhLCAxMjlLIGluaXQsIDIxMUsgYnNzLCAzMzUwNEsg
cmVzZXJ2ZWQsIDBLIGNtYS1yZXNlcnZlZCkKTlJfSVJRUzogMTUKY2xvY2tzb3VyY2U6IHRpbWVy
OiBtYXNrOiAweGZmZmZmZmZmZmZmZmZmZmYgbWF4X2N5Y2xlczogMHgxY2Q0MmUyMDUsIG1heF9p
ZGxlX25zOiA4ODE1OTA0MDQ0MjYgbnMKLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0t
LS0tCldBUk5JTkc6IENQVTogMCBQSUQ6IDAgYXQga2VybmVsL3RpbWUvY2xvY2tldmVudHMuYzo0
NTggY2xvY2tldmVudHNfcmVnaXN0ZXJfZGV2aWNlKzB4NzIvMHgxNDAKcG9zaXgtdGltZXIgY3B1
bWFzayA9PSBjcHVfYWxsX21hc2ssIHVzaW5nIGNwdV9wb3NzaWJsZV9tYXNrIGluc3RlYWQKTW9k
dWxlcyBsaW5rZWQgaW46CkNQVTogMCBQSUQ6IDAgQ29tbTogc3dhcHBlciBOb3QgdGFpbnRlZCA1
LjEuMC1yYzQtMDAwNDgtZ2VkNzljYzg3MzAyYiAjNApTdGFjazoKIDYwNGViZGEwIDYwM2M1Mzcw
IDYwNGViZTIwIDYwNDZmZDE3CiAwMDAwMDAwMCA2MDA2ZmNiYiA2MDRlYmRiMCA2MDNjNTNiNQog
NjA0ZWJlMTAgNjAwM2JmYzQgNjA0ZWJkZDAgOTAwMDAwMWNhCkNhbGwgVHJhY2U6CiBbPDYwMDZm
Y2JiPl0gPyBwcmludGsrMHgwLzB4OTQKIFs8NjAwODMxNjA+XSA/IGNsb2NrZXZlbnRzX3JlZ2lz
dGVyX2RldmljZSsweDcyLzB4MTQwCiBbPDYwMDFmMTZlPl0gc2hvd19zdGFjaysweDEzYi8weDE1
NQogWzw2MDNjNTM3MD5dID8gZHVtcF9zdGFja19wcmludF9pbmZvKzB4ZTIvMHhlYgogWzw2MDA2
ZmNiYj5dID8gcHJpbnRrKzB4MC8weDk0CiBbPDYwM2M1M2I1Pl0gZHVtcF9zdGFjaysweDJhLzB4
MmMKIFs8NjAwM2JmYzQ+XSBfX3dhcm4rMHgxMGUvMHgxM2UKIFs8NjAwNzAzMjA+XSA/IHZwcmlu
dGtfZnVuYysweGM4LzB4Y2YKIFs8NjAwMzBmZDY+XSA/IGJsb2NrX3NpZ25hbHMrMHgwLzB4MTYK
IFs8NjAwNmZjYmI+XSA/IHByaW50aysweDAvMHg5NAogWzw2MDAzYzA4Yj5dIHdhcm5fc2xvd3Bh
dGhfZm10KzB4OTcvMHg5OQogWzw2MDAzMTFhMT5dID8gc2V0X3NpZ25hbHMrMHgwLzB4M2YKIFs8
NjAwM2JmZjQ+XSA/IHdhcm5fc2xvd3BhdGhfZm10KzB4MC8weDk5CiBbPDYwMDg0MmNiPl0gPyB0
aWNrX29uZXNob3RfbW9kZV9hY3RpdmUrMHg0NC8weDRmCiBbPDYwMDMwZmQ2Pl0gPyBibG9ja19z
aWduYWxzKzB4MC8weDE2CiBbPDYwMDZmY2JiPl0gPyBwcmludGsrMHgwLzB4OTQKIFs8NjAwN2Qy
ZDU+XSA/IF9fY2xvY2tzb3VyY2Vfc2VsZWN0KzB4MjAvMHgxYjEKIFs8NjAwMzBmZDY+XSA/IGJs
b2NrX3NpZ25hbHMrMHgwLzB4MTYKIFs8NjAwNmZjYmI+XSA/IHByaW50aysweDAvMHg5NAogWzw2
MDA4MzE2MD5dIGNsb2NrZXZlbnRzX3JlZ2lzdGVyX2RldmljZSsweDcyLzB4MTQwCiBbPDYwMDMx
MTkyPl0gPyBnZXRfc2lnbmFscysweDAvMHhmCiBbPDYwMDMwZmQ2Pl0gPyBibG9ja19zaWduYWxz
KzB4MC8weDE2CiBbPDYwMDZmY2JiPl0gPyBwcmludGsrMHgwLzB4OTQKIFs8NjAwMDJlZWM+XSB1
bV90aW1lcl9zZXR1cCsweGM4LzB4Y2EKIFs8NjAwMDFiNTk+XSBzdGFydF9rZXJuZWwrMHg0N2Yv
MHg1N2UKIFs8NjAwMDM1YmM+XSBzdGFydF9rZXJuZWxfcHJvYysweDQ5LzB4NGQKIFs8NjAwNmM0
ODM+XSA/IGttc2dfZHVtcF9yZWdpc3RlcisweDgyLzB4OGEKIFs8NjAwMWRlNjI+XSBuZXdfdGhy
ZWFkX2hhbmRsZXIrMHg4MS8weGIyCiBbPDYwMDAzNTcxPl0gPyBrbXNnX2R1bXBlcl9zdGRvdXRf
aW5pdCsweDFhLzB4MWMKIFs8NjAwMjBjNzU+XSB1bWxfZmluaXNoc2V0dXArMHg1NC8weDU5Cgpy
YW5kb206IGdldF9yYW5kb21fYnl0ZXMgY2FsbGVkIGZyb20gaW5pdF9vb3BzX2lkKzB4MjcvMHgz
NCB3aXRoIGNybmdfaW5pdD0wCi0tLVsgZW5kIHRyYWNlIDAwMTczZDAxMTdhODhhY2IgXS0tLQpD
YWxpYnJhdGluZyBkZWxheSBsb29wLi4uIDY5NDEuOTAgQm9nb01JUFMgKGxwaj0zNDcwOTUwNCkK
ClNpZ25lZC1vZmYtYnk6IE1hY2llaiDFu2VuY3p5a293c2tpIDxtYXplQGdvb2dsZS5jb20+CkNj
OiBKZWZmIERpa2UgPGpkaWtlQGFkZHRvaXQuY29tPgpDYzogUmljaGFyZCBXZWluYmVyZ2VyIDxy
aWNoYXJkQG5vZC5hdD4KQ2M6IEFudG9uIEl2YW5vdiA8YW50b24uaXZhbm92QGNhbWJyaWRnZWdy
ZXlzLmNvbT4KQ2M6IGxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LWtlcm5l
bEB2Z2VyLmtlcm5lbC5vcmcKClNpZ25lZC1vZmYtYnk6IFJpY2hhcmQgV2VpbmJlcmdlciA8cmlj
aGFyZEBub2QuYXQ+ClNpZ25lZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9y
Zz4KLS0tCiBhcmNoL3VtL2tlcm5lbC90aW1lLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL3VtL2tlcm5lbC90
aW1lLmMgYi9hcmNoL3VtL2tlcm5lbC90aW1lLmMKaW5kZXggMDUyZGU0YzhhY2IyLi4wYzU3MmE0
ODE1OGUgMTAwNjQ0Ci0tLSBhL2FyY2gvdW0va2VybmVsL3RpbWUuYworKysgYi9hcmNoL3VtL2tl
cm5lbC90aW1lLmMKQEAgLTU2LDcgKzU2LDcgQEAgc3RhdGljIGludCBpdGltZXJfb25lX3Nob3Qo
c3RydWN0IGNsb2NrX2V2ZW50X2RldmljZSAqZXZ0KQogc3RhdGljIHN0cnVjdCBjbG9ja19ldmVu
dF9kZXZpY2UgdGltZXJfY2xvY2tldmVudCA9IHsKIAkubmFtZQkJCT0gInBvc2l4LXRpbWVyIiwK
IAkucmF0aW5nCQkJPSAyNTAsCi0JLmNwdW1hc2sJCT0gY3B1X2FsbF9tYXNrLAorCS5jcHVtYXNr
CQk9IGNwdV9wb3NzaWJsZV9tYXNrLAogCS5mZWF0dXJlcwkJPSBDTE9DS19FVlRfRkVBVF9QRVJJ
T0RJQyB8CiAJCQkJICBDTE9DS19FVlRfRkVBVF9PTkVTSE9ULAogCS5zZXRfc3RhdGVfc2h1dGRv
d24JPSBpdGltZXJfc2h1dGRvd24sCi0tIAoyLjIwLjEKCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11
bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtdW0K
