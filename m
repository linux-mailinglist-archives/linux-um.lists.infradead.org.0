Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E03E1DB11E
	for <lists+linux-um@lfdr.de>; Wed, 20 May 2020 13:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpLuRPMQ/uwhz3ig5ygXjVc0pyjG/vVzKa5FI5gFKsc=; b=SySuWBvH7qlgnA
	TZvKVXr+ZUizSIWwJp/yo9MR+Eq07mtjkzrQGZE2/OPO1vaIWTqbp9aQ5LDDIGdLQRUp+I4HVokW/
	sdO1hC7BTX2KZYtvopblNCJMvl90324KDKcHqyXR1effENk2gLckuzsOznLlDASmO9/piZ9Dr6PMQ
	0atm9k3JC/Pmdg+JZitfoN1TrB5b/966sR6e9jZHrxc/tv/VmCkkXQJFQmC54XuI3C23YgTMRzy5s
	QiVejLAR8fzdhknD25JG5sdAua70LHSYjME7C8EcW9Jct+Pf0g9FF3H1UaEGQWXJRgg8SJUhPeK+c
	7+rqXyLH5Mh4OSrWZHmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMdT-0003xZ-TW; Wed, 20 May 2020 11:11:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMdI-0003mp-Hw
 for linux-um@lists.infradead.org; Wed, 20 May 2020 11:11:34 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6429E207C4;
 Wed, 20 May 2020 11:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589973091;
 bh=CZO2oVmSFplMBz9Hp/Ib++cLu93ut1vlEwhwSgDctvg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=0JQBodzpZZsofv0Hjk8g+YCto+yzr1HnJmp8bkaaHFsZdNStcwkqu6sxB/Cq7RGNZ
 D9oyW+ivG0VvZVxdbnNjqnjrKg4ZFxKYuPou20DYf2dxIBIfJoUskwUkakdJdMZzgW
 O2b3pTDEl9xo3o3HjCuYb8IrGfvnz8+E0HAxmEdI=
Date: Wed, 20 May 2020 20:11:26 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 13/20] maccess: always use strict semantics for
 probe_kernel_read
Message-Id: <20200520201126.f37d3b1e46355199216404e2@kernel.org>
In-Reply-To: <20200519134449.1466624-14-hch@lst.de>
References: <20200519134449.1466624-1-hch@lst.de>
 <20200519134449.1466624-14-hch@lst.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_041132_625611_391A58C1 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-parisc@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, x86@kernel.org, linux-um@lists.infradead.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, bpf@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gVHVlLCAxOSBNYXkgMjAyMCAxNTo0NDo0MiArMDIwMApDaHJpc3RvcGggSGVsbHdpZyA8aGNo
QGxzdC5kZT4gd3JvdGU6Cgo+IGRpZmYgLS1naXQgYS9rZXJuZWwvdHJhY2UvdHJhY2Vfa3Byb2Jl
LmMgYi9rZXJuZWwvdHJhY2UvdHJhY2Vfa3Byb2JlLmMKPiBpbmRleCAyZjY3MzdjYzUzZTZjLi44
MmRhMjBlNzEyNTA3IDEwMDY0NAo+IC0tLSBhL2tlcm5lbC90cmFjZS90cmFjZV9rcHJvYmUuYwo+
ICsrKyBiL2tlcm5lbC90cmFjZS90cmFjZV9rcHJvYmUuYwo+IEBAIC0xMjA4LDcgKzEyMDgsMTMg
QEAgZmV0Y2hfc3RvcmVfc3RybGVuKHVuc2lnbmVkIGxvbmcgYWRkcikKPiAgCXU4IGM7Cj4gIAo+
ICAJZG8gewo+IC0JCXJldCA9IHByb2JlX2tlcm5lbF9yZWFkKCZjLCAodTggKilhZGRyICsgbGVu
LCAxKTsKPiArCQlpZiAoSVNfRU5BQkxFRChDT05GSUdfQVJDSF9IQVNfTk9OX09WRVJMQVBQSU5H
X0FERFJFU1NfU1BBQ0UpICYmCj4gKwkJICAgICh1bnNpZ25lZCBsb25nKWFkZHIgPCBUQVNLX1NJ
WkUpIHsKPiArCQkJcmV0ID0gcHJvYmVfdXNlcl9yZWFkKCZjLAo+ICsJCQkJKF9fZm9yY2UgdTgg
X191c2VyICopYWRkciArIGxlbiwgMSk7Cj4gKwkJfSBlbHNlIHsKPiArCQkJcmV0ID0gcHJvYmVf
a2VybmVsX3JlYWQoJmMsICh1OCAqKWFkZHIgKyBsZW4sIDEpOwo+ICsJCX0KPiAgCQlsZW4rKzsK
PiAgCX0gd2hpbGUgKGMgJiYgcmV0ID09IDAgJiYgbGVuIDwgTUFYX1NUUklOR19TSVpFKTsKClRv
IGF2b2lkIHJlZHVuZGFudCBjaGVjayBpbiB0aGUgbG9vcCwgd2UgY2FuIHVzZSBzdHJubGVuX3Vz
ZXJfbm9mYXVsdCgpIG91dCBvZgp0aGUgbG9vcC4gU29tZXRoaW5nIGxpa2UgYmVsb3cuCgouLi4K
CXU4IGM7CgoJaWYgKElTX0VOQUJMRUQoQ09ORklHX0FSQ0hfSEFTX05PTl9PVkVSTEFQUElOR19B
RERSRVNTX1NQQUNFKSAmJgoJICAgICh1bnNpZ25lZCBsb25nKWFkZHIgPCBUQVNLX1NJWkUpIHsK
CQlyZXR1cm4gc3Rybmxlbl91c2VyX25vZmF1bHQoKF9fZm9yY2UgdTggX191c2VyICopYWRkciwg
TUFYX1NUUklOR19TSVpFKTsKCglkbyB7CgkJcmV0ID0gcHJvYmVfa2VybmVsX3JlYWQoJmMsICh1
OCAqKWFkZHIgKyBsZW4sIDEpOwoJCWxlbisrOwoJfSB3aGlsZSAoYyAmJiByZXQgPT0gMCAmJiBs
ZW4gPCBNQVhfU1RSSU5HX1NJWkUpOwouLi4KClRoaXMgbXVzdCB3b3JrIGJlY2F1c2Ugd2UgbXVz
dCBub3QgaGF2ZSBhIHN0cmluZyB0aGF0IGNvbnRpbnVlcyBhY3Jvc3MKa2VybmVs44CAc3BhY2Ug
YW5kIHVzZXIgc3BhY2UuCgpUaGFuayB5b3UsCgoKLS0gCk1hc2FtaSBIaXJhbWF0c3UgPG1oaXJh
bWF0QGtlcm5lbC5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
