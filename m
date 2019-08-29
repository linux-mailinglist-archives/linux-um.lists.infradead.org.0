Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DBCA287B
	for <lists+linux-um@lfdr.de>; Thu, 29 Aug 2019 22:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sB1a0FE1GoHylM99A9qK3bkryzBkjbxdzMZF1/aGk2k=; b=D2vIUSBqVaa+qt
	H/rcH1LvPg0RaGB36FV6FuSJ1B4gJQEsap/cflAx6vaAX+mEUAe95CmShomiqtvmrjrjZiH7hYi9M
	nupV8+/NTmovsznCoXltZjgVVbxqBRR8GTBbj3NCL7QZI+2gTos/bajsNTSX6zS8pmDSTeqFsfDmH
	AsEhTUvx9BeruWak0YU4rxf3KvavhMa107e7pFFHCOJFdWhGKnYG9cWeIHKSoyE7gUvs5fPPJF8kN
	g236te2SJJyV0T8Klaw7y4SYR82PWGnMzRmJGhEJhJ5cifDpUMiEGWwa9HulZCsQJ8bEhQjP6Ugsn
	nCyd3/Qvkb97o745mxww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3RTS-0000qQ-2M; Thu, 29 Aug 2019 20:56:54 +0000
Received: from mx1.volatile.bz ([2001:67c:2db8:301:138:0:101:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3RTO-0000q1-T0
 for linux-um@lists.infradead.org; Thu, 29 Aug 2019 20:56:52 +0000
Received: from TheDarkness (unknown
 [IPv6:2600:6c5d:4200:1e2a:5ae6:e27c:4008:d85e])
 by mx1.volatile.bz (Postfix) with ESMTPSA id 203A82F34;
 Thu, 29 Aug 2019 20:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=volatile.bz;
 s=default; t=1567112200;
 bh=2Cld8ITONmQhx82iPM0yzzpBzpBAbtt/czPoBPirKMI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=aFzze3ptOfzWszyUPz+6uGkAVoHyMSUavzNLXeh1pd4LmEMBUIpFn9xHO2c2gOyOn
 sF3vk6HyTrqXS65SOVum52FbkHZv/3in+Ru0AElUUaPb6IButNawbwpsxSNTBa6eSp
 KYvA+A2ErD3rpOjyMuVQREIwtU6Wzg+/ynioCNx0=
Date: Thu, 29 Aug 2019 16:56:35 -0400
From: Alexander Neville <dark@volatile.bz>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH v2] um: Rewrite host RNG driver.
Message-ID: <20190829165442.3a3425ad@TheDarkness>
In-Reply-To: <899887272.76523.1567104513068.JavaMail.zimbra@nod.at>
References: <20190829135001.6a5ff940@TheDarkness.local>
 <899887272.76523.1567104513068.JavaMail.zimbra@nod.at>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_135651_115429_8050931C 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:67c:2db8:301:138:0:101:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gVGh1LCAyOSBBdWcgMjAxOSAyMDo0ODozMyArMDIwMCAoQ0VTVCksIFJpY2hhcmQgV2VpbmJl
cmdlciA8cmljaGFyZEBub2QuYXQ+IHdyb3RlOgoKPiAtLS0tLSBVcnNwcsO8bmdsaWNoZSBNYWls
IC0tLS0tCj4gPiBWb246ICJEYXJrIiA8ZGFya0B2b2xhdGlsZS5iej4KPiA+ICsJLy8gUmV0dXJu
aW5nIC1FQUdBSU4gdG8gdXNlcnNwYWNlIGlzIG5vdCBuaWNlLgo+ID4gKwlpZiAoZXJyID09IC1F
QUdBSU4pCj4gPiArCQlyZXR1cm4gMDsgIAo+IAo+IEhtbSwgZG9lc24ndCB0aGlzIHJlc3VsdCBp
biBhIHNob3J0IHJlYWQ/Cj4gVGhlIGN1cnJlbnQgZHJpdmVzIHNldHMgdGhlIGNhbGxpbmcgdGFz
ayB0byBzbGVlcCBhbmQgd2FrZXMKPiBpdCB1cCBhcyBzb29uIGRhdGEgaXMgYXZhaWxhYmxlIGFn
YWluLiBJJ2QgYXNzdW1lcyB0aSBoYXZlIHRoZQo+IHNhbWUgYmVoYXZpb3IgZm9yIHRoZSBuZXcg
ZHJpdmVyLgo+IAo+IFRoYW5rcywKPiAvL3JpY2hhcmQKCkNsZWFybHkgdGhpcyBwYXRjaCBuZWVk
cyBhIGxvdCBtb3JlIHdvcmsgYmVmb3JlIEkgc3VibWl0IGl0LiBJJ2xsIAp0YWtlIHNvbWUgdGlt
ZSB0byBwb2xpc2ggaXQgdXAgYW5kIHRoZW4gcmVzdWJtaXQgaXQgaWYgdGhhdCdzIGZpbmUuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBt
YWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
