Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C36109C72
	for <lists+linux-um@lfdr.de>; Tue, 26 Nov 2019 11:42:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++C8ib0aH0jQZZIyDeQxsaEI5Wi+/O9YXWF5a0fKXt0=; b=Y2+xLNsrXGVhT5
	Qx6HVIGHLziBzoHy22ZyfcyYokyN/e+MA4AijHL5IdPKqwLgrYhFdxS3max3m9ycEYRcdzaYFhqnH
	u9GOo5jnpi1PCSAmTb1adVhjkaVYw0vKvWAKXjoXIgr08MP9vaaysrf2ULI5cuK84OOhYsHp1S+Kk
	6zqbpld/WjDQxu8EUeUkaRoRoD0wJ9zIfSlHtJhkQP82wrexHPFBfSO2TgKAzcDTjhYz5z/8wnsWH
	SiJ7bSmDGjqIZPMrUOcbVc3cm3Lqxp/xEXLrBf8fEihYRthk7p98Miz2c3q+ZNAqtTxSZTGNi+J4p
	INI034ZKt0xAMO9dx2ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZYIh-0008En-Ja; Tue, 26 Nov 2019 10:42:31 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZYIQ-0007LW-D2
 for linux-um@lists.infradead.org; Tue, 26 Nov 2019 10:42:16 +0000
Received: by mail-il1-x144.google.com with SMTP id v17so13314633ilg.7
 for <linux-um@lists.infradead.org>; Tue, 26 Nov 2019 02:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rN6hX6UIjkl8mKnhvYVMUGoWOFAsS2VHV71TXTPM2vo=;
 b=Zk004bV+gDdINhUAPo/QYLfqW8JAsP0+o2D+/aIIaFG9bRG3iLBdg6TWVDbCMV/4x0
 SdM04MKuXZvvxo+nnW6EO3avMym/FHAshOgWXjKqEEcmHwvo3+SaiZXEin9vSTvfSkpC
 RrU0BJruUC9ngDYhLQfORzXUuEyUr3CVxPJGXoekNujKvpu1g359r+90WNFCC7hra+SD
 HPGoTv6e2WuzqI5f8DlE3nUAph/RKxsZ6hm8cnxWvQrDxsvlxj87Cu0Q7TWPdxMI4vKa
 QwbPrqM5uXyqYeXpaPWV+8GMMhpiSAIsNlJqlzSuNUZW9cfz8N1rOc88SsseRuzzWOrY
 Bydg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rN6hX6UIjkl8mKnhvYVMUGoWOFAsS2VHV71TXTPM2vo=;
 b=tc4GInao3Yl7GqOodj1hogiYEAlzT70jP6MipgRq7Q9fA0Vx28hogy1PnSL1sBB972
 UEh9F5S8UTNX1WG/qbdwsMmRFVoJ9GtqragMcvNQ5XDEeQSRnawg5SPr6FolZyZktk73
 S+ihRaqHvCys+jZsgptXV6S4hMyDmMn+/ajuGpI4DjO/D+9j7tP7Q7DXSJmEn0/G1ILz
 MZf7Nun3hgQrNwkLTofha4+qjjld4VliLxD1U4PN+I9sGkbu63fs5H78Hh6SrlwoZ/9f
 gl0o+IOLex/9LsMtvg9pJiwgEI1Yw8hV4sVCfx0WvhPCZg3sYd8toGv9A8EpOevNp64V
 pGTQ==
X-Gm-Message-State: APjAAAWaHl0DtbfM2rPxNO8utOb3WHQ/yD/0SA8FKDEF47yIw4XHeCTc
 gqzFrijbEvrVQ89lPOVmP1K09HMk2NVehEKRYHKqiHKcvwc=
X-Google-Smtp-Source: APXvYqyQya69iSRzRbLuF1WUpS4hv5vVxVYiP+KmiRMWUXYyArus5JFA4f+UsqIrqPibXeBwsCj6xubh/MocwJCtCXA=
X-Received: by 2002:a92:8108:: with SMTP id e8mr37510102ild.209.1574764932547; 
 Tue, 26 Nov 2019 02:42:12 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573179553.git.thehajime@gmail.com>
 <1531c5f16a00b608635c9a62fa3951807075f950.1573179553.git.thehajime@gmail.com>
 <CAFLxGvzCwCLbLMhcF6ZJ2afeo7PSd8xLQrU9hRH6YVaMakBSyw@mail.gmail.com>
 <de90b04151bafee083727c9769833932788cf428.camel@sipsolutions.net>
 <1662825264.98055.1574758225905.JavaMail.zimbra@nod.at>
 <4ebb14dc67ccb70543617ce1f7066f3f27cd11a8.camel@sipsolutions.net>
 <243342257.98153.1574762974057.JavaMail.zimbra@nod.at>
 <98acf77a7c6f6cba7f76c12a850ac2929b9e5a48.camel@sipsolutions.net>
In-Reply-To: <98acf77a7c6f6cba7f76c12a850ac2929b9e5a48.camel@sipsolutions.net>
From: Octavian Purdila <tavi.purdila@gmail.com>
Date: Tue, 26 Nov 2019 12:42:01 +0200
Message-ID: <CAMoF9u3LRC_NaVJzmKPc0+XBxhAqdhnr4-ZzY_ypwQEzUz78yQ@mail.gmail.com>
Subject: Re: [RFC v2 17/37] lkl tools: host lib: virtio devices
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_024214_567540_DCCB6680 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tavi.purdila[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch <linux-arch@vger.kernel.org>, cem <cem@freebsd.org>,
 Richard Weinberger <richard@nod.at>, linux-um <linux-um@lists.infradead.org>,
 retrage01 <retrage01@gmail.com>, liuyuan <liuyuan@google.com>,
 pscollins <pscollins@google.com>,
 linux-kernel-library <linux-kernel-library@freelists.org>,
 sigmaepsilon92 <sigmaepsilon92@gmail.com>, Hajime Tazaki <thehajime@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMTI6MTYgUE0gSm9oYW5uZXMgQmVyZwo8am9oYW5uZXNA
c2lwc29sdXRpb25zLm5ldD4gd3JvdGU6Cj4KPiBPbiBUdWUsIDIwMTktMTEtMjYgYXQgMTE6MDkg
KzAxMDAsIFJpY2hhcmQgV2VpbmJlcmdlciB3cm90ZToKPiA+IC0tLS0tIFVyc3Byw7xuZ2xpY2hl
IE1haWwgLS0tLS0KPiA+ID4gPiBNeSBwb2ludCBpcyB0aGF0IFVNTCBhbmQgTEtMIHNob3VsZCB0
cnkgdG8gZG8gdXNlIHRoZSBzYW1lIGNvbmNlcHQvY29kZQo+ID4gPiA+IHJlZ2FyZGluZyB2aXJ0
aW8uIEF0IHRoZSBlbmQgb2YgZGF5IGJvdGggdXNlIHZpcnR1YWwgZGV2aWNlcyB3aGljaCB1c2UK
PiA+ID4gPiBmYWNpbGl0aWVzIGZyb20gdGhlIGhvc3QuCj4gPiA+ID4gSWYgdGhpcyBpcyByZWFs
bHkgbm90IHBvc3NpYmxlIGl0IG5lZWRzIGEgZ29vZCBleHBsYW5hdGlvbi4KPiA+ID4KPiA+ID4g
SSB0aGluayBpdCBpc24ndCBwb3NzaWJsZSwgdW5sZXNzIHlvdSB1c2Ugdmhvc3QtdXNlciBvdmVy
IGEgdW5peCBkb21haW4KPiA+ID4gc29ja2V0IGludGVybmFsbHkgdG8gdGFsayBiZXR3ZWVuIHRo
ZSBrZXJuZWwgKHZpcnRpb191bWwpIGFuZCBoeXBlcnZpc29yCj4gPiA+IChkZXZpY2UpIGNvbXBv
bmVudHMuCj4gPiA+Cj4gPiA+IEluIHZpcnRpb191bWwsIHRoZSBkZXZpY2UgaW1wbGVtZW50YXRp
b24gaXMgYXNzdW1lZCB0byBiZSBhIHNlcGFyYXRlCj4gPiA+IHByb2Nlc3Mgd2l0aCBhIHZob3N0
LXVzZXIgY29ubmVjdGlvbi4gSGVyZSBpbiBMS0wsIHRoZSB2aXJ0aW8gZGV2aWNlIGlzCj4gPiA+
IHBhcnQgb2YgdGhlICJoeXBlcnZpc29yIiwgaS5lLiBpbiB0aGUgc2FtZSBwcm9jZXNzLgo+ID4K
PiA+IEV4YWN0bHksIGN1cnJlbnRseSBVTUwgYW5kIExLTCBzb2x2ZSBzYW1lIHRoaW5ncyBkaWZm
ZXJlbnRseSwgYnV0IGRvIHdlIG5lZWQgdG8/Cj4KPiBJdCdzIG5vdCB0aGUgc2FtZSB0aGluZyB0
aG91Z2ggOi0pCj4KPiBVTUwgcmlnaHQgbm93IGRvZXNuJ3QgaGF2ZSBvciBzdXBwb3J0IHZpcnRp
byBkZXZpY2VzIGluIHRoZSBidWlsdC1pbgo+IGh5cGVydmlzb3IsIHdoYXQgd2Ugd2FudGVkIHRv
IHVzZSB2aXJ0aW8gZm9yIHdhcyBleHBsaWNpdGx5IGZvciB0aGUKPiB2aG9zdC11c2VyIGRldmlj
ZXMuCj4KPiBMS0wgY2xlYXJseSB3YW50cyB0byBoYXZlIGRldmljZSBpbXBsZW1lbnRhdGlvbnMg
aW4gdGhlIGh5cGVydmlzb3IsCj4gcGVyaGFwcyBmb3IgbmV0d29ya2luZyBvciBjb25zb2xlIGV0
Yy4/IFRoYXQgX21pZ2h0XyBiZSB1c2VmdWwgc2luY2UgaXQKPiBtYWtlcyB0aGUgZGV2aWNlIGlt
cGxlbWVudGF0aW9uIG1vcmUgZ2VuZXJhbCwgdW5saWtlIHRoZSBVTUwgYXBwcm9hY2gKPiB3aGVy
ZSBhbGwgZGV2aWNlcyBjb21lIHdpdGggYSBrZXJuZWwtIGFuZCB1c2VyLXNpZGUgYW5kIGFyZSBz
cGVjaWFsCj4gZHJpdmVycyBpbiB0aGUga2VybmVsLCB2cy4gZ2VuZXJhbCB2aXJ0aW8gZHJpdmVy
cy4KPgoKVGhhdCBpcyBjb3JyZWN0LiBJbml0aWFsbHkgd2UgdXNlZCB0aGUgc2FtZSBVTUwgbW9k
ZWwsIHdpdGggZGVkaWNhdGVkCmRyaXZlcnMgZm9yIExLTCwgYW5kIGxhdGVyIHN3aXRjaGVkIHRv
IHVzaW5nIHRoZSBidWlsdC1pbiB2aXJ0aW8KZHJpdmVycyAoc28gZmFyIGZvciBuZXR3b3JrIGFu
ZCBibG9jayBkZXZpY2VzKS4KCj4gTm93LCBhcmd1YWJseSwgc2luY2UgVU1MIGhhcyBhbGwgdGhl
c2UgYWxyZWFkeSBhIGNvbWJpbmVkIFVNTC9MS0wKPiBkb2Vzbid0IGFjdHVhbGx5ICpuZWVkKiBh
bnkgdmlydGlvIGRldmljZXMsIHNpbmNlIGFsbCAob3IgYXQgbGVhc3QgbW9zdCkKPiBvZiB0aGUg
dGhpbmdzIHRoYXQgY291bGQgYmUgY292ZXJlZCBieSB2aXJ0aW8gdG9kYXkgYXJlIGFscmVhZHkg
Y292ZXJlZAo+IGJ5IFVNTCBkZXZpY2VzIChibG9jaywgbmV0LCBjb25zb2xlLCByYW5kb20pLgo+
Cj4gSSdkIHByb2JhYmx5IHNheSB0aGVuIHRoYXQgdGhpcyBjYW4gYmUgcmVtb3ZlZCBmcm9tIGFu
IGluaXRpYWwgIm1pbmltdW0KPiB2aWFibGUgcHJvZHVjdCIgb2YgTEtMLCBzaW5jZSBvbmNlIG1l
cmdlZCB3aXRoIFVNTCB5b3UgZ2V0IHRoZSBkZXZpY2VzCj4gZnJvbSB0aGF0LiBMYXRlciwgd2Ug
Y291bGQgZGVjaWRlIHRoYXQgVU1MIGRldmljZXMgYWN0dWFsbHkgYXJlIGJldHRlcgo+IGRvbmUg
YXMgdmlydGlvLCBhbmQgc3VwcG9ydCBzb21ldGhpbmcgbGlrZSB0aGlzLgo+CgpJIGFncmVlLCBJ
IHRoaW5rIGl0IG1ha2Ugc2Vuc2UgdG8gZHJvcCB0aGVzZSBzaW5jZSB0aGUgcHJvYmxlbSBvZgpk
ZWRpY2F0ZWQgdnMgZ2VuZXJpYyAvIHZpcnRpbyBkcml2ZXJzIGFyZSBvcnRob2dvbmFsIHdpdGgg
cmVnYXJkIHRvClVNTCBhbmQgTEtMIHVuaWZpY2F0aW9uIGFuZCBjYW4gbGF0ZXIgYmUgd29ya2Vk
IG9uLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
