Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5940331C06
	for <lists+linux-um@lfdr.de>; Sat,  1 Jun 2019 15:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ReXaqWCS8AuZR82JjUQibnPop1sBYfm9O++AGzfNTXg=; b=aqAPWG6mCr3w0l
	LykZCNwWb2alnQgg0qkejcnYM7lO7wyvYI2HtgGSSd6NXDQ4OtEjKGGHQa8tJrHgo94BjmBczIS9V
	xlPGKTyg5UuKrnn24RPBiyoCGQGVGIrEs58I5SOcG923KpmEBi3KaYIOI4jQ3qwUOcQ/XHoVBmqtp
	jwqCBs+fU3UjQ1UIyGNiviMY14ntgMUm9C9PvhK+It9XSOmK/beoYTJwHzkQTqbtXNbVpvvgNC0vm
	K7tQHYGt6DcgT7WFwkGMFTpqa1388PiOoxhAQBh77OUfaEFUvbk+9kPxCwJpIdvRcoK1SYwlG8HEA
	CVxKyjN+yZos27Yu5nsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX3ub-00021D-Qf; Sat, 01 Jun 2019 13:19:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX3uX-00020d-5U
 for linux-um@lists.infradead.org; Sat, 01 Jun 2019 13:19:03 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 097902729D;
 Sat,  1 Jun 2019 13:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559395140;
 bh=2uGRV4UYU8MhgIsmB1C/n9YqWWL5HigLXU2aP/VhuWI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RkUNsxQKxlnz1eu2HxrWp+p6GEWH950z28Zzeh1peAanNpSV2at4x2f4pxupXMDD2
 HyWIOD3k2VwDGUjAHmmvppt1ZbbZqPMQ7wnR7jN2NAFislySxl7gQBLKdcNq4qbgeD
 gfIxLHF3l5ptYsLV0ZRUckqcVmI7tnLtmvefVovk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 061/186] uml: fix a boot splat wrt use of
 cpu_all_mask
Date: Sat,  1 Jun 2019 09:14:37 -0400
Message-Id: <20190601131653.24205-61-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190601131653.24205-1-sashal@kernel.org>
References: <20190601131653.24205-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_061901_240105_04308F28 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

RnJvbTogTWFjaWVqIMW7ZW5jenlrb3dza2kgPG1hemVAZ29vZ2xlLmNvbT4KClsgVXBzdHJlYW0g
Y29tbWl0IDY4OWE1ODYwNWI2MzE3M2FjYjBhOGNmOTU0YWY2YThmNjA0NDBjOTMgXQoKTWVtb3J5
OiA1MDkxMDhLLzU0MjYxMksgYXZhaWxhYmxlICgzODM1SyBrZXJuZWwgY29kZSwgOTE5SyByd2Rh
dGEsIDEwMjhLIHJvZGF0YSwgMTI5SyBpbml0LCAyMTFLIGJzcywgMzM1MDRLIHJlc2VydmVkLCAw
SyBjbWEtcmVzZXJ2ZWQpCk5SX0lSUVM6IDE1CmNsb2Nrc291cmNlOiB0aW1lcjogbWFzazogMHhm
ZmZmZmZmZmZmZmZmZmZmIG1heF9jeWNsZXM6IDB4MWNkNDJlMjA1LCBtYXhfaWRsZV9uczogODgx
NTkwNDA0NDI2IG5zCi0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQpXQVJOSU5H
OiBDUFU6IDAgUElEOiAwIGF0IGtlcm5lbC90aW1lL2Nsb2NrZXZlbnRzLmM6NDU4IGNsb2NrZXZl
bnRzX3JlZ2lzdGVyX2RldmljZSsweDcyLzB4MTQwCnBvc2l4LXRpbWVyIGNwdW1hc2sgPT0gY3B1
X2FsbF9tYXNrLCB1c2luZyBjcHVfcG9zc2libGVfbWFzayBpbnN0ZWFkCk1vZHVsZXMgbGlua2Vk
IGluOgpDUFU6IDAgUElEOiAwIENvbW06IHN3YXBwZXIgTm90IHRhaW50ZWQgNS4xLjAtcmM0LTAw
MDQ4LWdlZDc5Y2M4NzMwMmIgIzQKU3RhY2s6CiA2MDRlYmRhMCA2MDNjNTM3MCA2MDRlYmUyMCA2
MDQ2ZmQxNwogMDAwMDAwMDAgNjAwNmZjYmIgNjA0ZWJkYjAgNjAzYzUzYjUKIDYwNGViZTEwIDYw
MDNiZmM0IDYwNGViZGQwIDkwMDAwMDFjYQpDYWxsIFRyYWNlOgogWzw2MDA2ZmNiYj5dID8gcHJp
bnRrKzB4MC8weDk0CiBbPDYwMDgzMTYwPl0gPyBjbG9ja2V2ZW50c19yZWdpc3Rlcl9kZXZpY2Ur
MHg3Mi8weDE0MAogWzw2MDAxZjE2ZT5dIHNob3dfc3RhY2srMHgxM2IvMHgxNTUKIFs8NjAzYzUz
NzA+XSA/IGR1bXBfc3RhY2tfcHJpbnRfaW5mbysweGUyLzB4ZWIKIFs8NjAwNmZjYmI+XSA/IHBy
aW50aysweDAvMHg5NAogWzw2MDNjNTNiNT5dIGR1bXBfc3RhY2srMHgyYS8weDJjCiBbPDYwMDNi
ZmM0Pl0gX193YXJuKzB4MTBlLzB4MTNlCiBbPDYwMDcwMzIwPl0gPyB2cHJpbnRrX2Z1bmMrMHhj
OC8weGNmCiBbPDYwMDMwZmQ2Pl0gPyBibG9ja19zaWduYWxzKzB4MC8weDE2CiBbPDYwMDZmY2Ji
Pl0gPyBwcmludGsrMHgwLzB4OTQKIFs8NjAwM2MwOGI+XSB3YXJuX3Nsb3dwYXRoX2ZtdCsweDk3
LzB4OTkKIFs8NjAwMzExYTE+XSA/IHNldF9zaWduYWxzKzB4MC8weDNmCiBbPDYwMDNiZmY0Pl0g
PyB3YXJuX3Nsb3dwYXRoX2ZtdCsweDAvMHg5OQogWzw2MDA4NDJjYj5dID8gdGlja19vbmVzaG90
X21vZGVfYWN0aXZlKzB4NDQvMHg0ZgogWzw2MDAzMGZkNj5dID8gYmxvY2tfc2lnbmFscysweDAv
MHgxNgogWzw2MDA2ZmNiYj5dID8gcHJpbnRrKzB4MC8weDk0CiBbPDYwMDdkMmQ1Pl0gPyBfX2Ns
b2Nrc291cmNlX3NlbGVjdCsweDIwLzB4MWIxCiBbPDYwMDMwZmQ2Pl0gPyBibG9ja19zaWduYWxz
KzB4MC8weDE2CiBbPDYwMDZmY2JiPl0gPyBwcmludGsrMHgwLzB4OTQKIFs8NjAwODMxNjA+XSBj
bG9ja2V2ZW50c19yZWdpc3Rlcl9kZXZpY2UrMHg3Mi8weDE0MAogWzw2MDAzMTE5Mj5dID8gZ2V0
X3NpZ25hbHMrMHgwLzB4ZgogWzw2MDAzMGZkNj5dID8gYmxvY2tfc2lnbmFscysweDAvMHgxNgog
Wzw2MDA2ZmNiYj5dID8gcHJpbnRrKzB4MC8weDk0CiBbPDYwMDAyZWVjPl0gdW1fdGltZXJfc2V0
dXArMHhjOC8weGNhCiBbPDYwMDAxYjU5Pl0gc3RhcnRfa2VybmVsKzB4NDdmLzB4NTdlCiBbPDYw
MDAzNWJjPl0gc3RhcnRfa2VybmVsX3Byb2MrMHg0OS8weDRkCiBbPDYwMDZjNDgzPl0gPyBrbXNn
X2R1bXBfcmVnaXN0ZXIrMHg4Mi8weDhhCiBbPDYwMDFkZTYyPl0gbmV3X3RocmVhZF9oYW5kbGVy
KzB4ODEvMHhiMgogWzw2MDAwMzU3MT5dID8ga21zZ19kdW1wZXJfc3Rkb3V0X2luaXQrMHgxYS8w
eDFjCiBbPDYwMDIwYzc1Pl0gdW1sX2ZpbmlzaHNldHVwKzB4NTQvMHg1OQoKcmFuZG9tOiBnZXRf
cmFuZG9tX2J5dGVzIGNhbGxlZCBmcm9tIGluaXRfb29wc19pZCsweDI3LzB4MzQgd2l0aCBjcm5n
X2luaXQ9MAotLS1bIGVuZCB0cmFjZSAwMDE3M2QwMTE3YTg4YWNiIF0tLS0KQ2FsaWJyYXRpbmcg
ZGVsYXkgbG9vcC4uLiA2OTQxLjkwIEJvZ29NSVBTIChscGo9MzQ3MDk1MDQpCgpTaWduZWQtb2Zm
LWJ5OiBNYWNpZWogxbtlbmN6eWtvd3NraSA8bWF6ZUBnb29nbGUuY29tPgpDYzogSmVmZiBEaWtl
IDxqZGlrZUBhZGR0b2l0LmNvbT4KQ2M6IFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2Qu
YXQ+CkNjOiBBbnRvbiBJdmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+CkNj
OiBsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJu
ZWwub3JnCgpTaWduZWQtb2ZmLWJ5OiBSaWNoYXJkIFdlaW5iZXJnZXIgPHJpY2hhcmRAbm9kLmF0
PgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogYXJj
aC91bS9rZXJuZWwvdGltZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC91bS9rZXJuZWwvdGltZS5jIGIvYXJj
aC91bS9rZXJuZWwvdGltZS5jCmluZGV4IDA1MmRlNGM4YWNiMmUuLjBjNTcyYTQ4MTU4ZTggMTAw
NjQ0Ci0tLSBhL2FyY2gvdW0va2VybmVsL3RpbWUuYworKysgYi9hcmNoL3VtL2tlcm5lbC90aW1l
LmMKQEAgLTU2LDcgKzU2LDcgQEAgc3RhdGljIGludCBpdGltZXJfb25lX3Nob3Qoc3RydWN0IGNs
b2NrX2V2ZW50X2RldmljZSAqZXZ0KQogc3RhdGljIHN0cnVjdCBjbG9ja19ldmVudF9kZXZpY2Ug
dGltZXJfY2xvY2tldmVudCA9IHsKIAkubmFtZQkJCT0gInBvc2l4LXRpbWVyIiwKIAkucmF0aW5n
CQkJPSAyNTAsCi0JLmNwdW1hc2sJCT0gY3B1X2FsbF9tYXNrLAorCS5jcHVtYXNrCQk9IGNwdV9w
b3NzaWJsZV9tYXNrLAogCS5mZWF0dXJlcwkJPSBDTE9DS19FVlRfRkVBVF9QRVJJT0RJQyB8CiAJ
CQkJICBDTE9DS19FVlRfRkVBVF9PTkVTSE9ULAogCS5zZXRfc3RhdGVfc2h1dGRvd24JPSBpdGlt
ZXJfc2h1dGRvd24sCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXVtCg==
