Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D912F1F5D0
	for <lists+linux-um@lfdr.de>; Wed, 15 May 2019 15:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VO5YlJqngjYJvz7HaPQRn1yAQXUiHK/dIypzLoG5h5w=; b=pc8iThzIlQl0g1
	pVLP2WxugcSrJ8FLeyPU/SvpkcAQm2a4G4nOzqW+57Snppe2TIXeAXgXsJD9V0lYg9YEwg5IKvOn8
	TJorU2RvJHp7Y5scON1gm2WKhrGJcwPsvjg77Ub1oPBkS2JIjPHBsNJoUdW4a1UbFyKM8M9mQGeDr
	wpzl+2HTOKNrxIrfqVLjPLny8kIht6liWLmQ0y+h2YWNi5Km3HNkaQwl4rUxDHXHX9EF43OgzOBQB
	PwWueFSVIX2e6Dq12o+4PboZSGk3GCUBgmfxIm7awEB3VCNlUcuH5nYw1lq6WaWtaktfptdmdLCS3
	bgQ4281OQB2T1zJ5/PXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQuEK-0007q0-9h; Wed, 15 May 2019 13:46:00 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQuEG-0007ok-QO
 for linux-um@lists.infradead.org; Wed, 15 May 2019 13:45:57 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id CACC1AAB;
 Wed, 15 May 2019 13:45:47 +0000 (UTC)
Date: Wed, 15 May 2019 07:45:46 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v3 15/18] Documentation: kunit: add documentation for KUnit
Message-ID: <20190515074546.07700142@lwn.net>
In-Reply-To: <20190514231902.GA12893@google.com>
References: <20190514054251.186196-1-brendanhiggins@google.com>
 <20190514054251.186196-16-brendanhiggins@google.com>
 <20190514073422.4287267c@lwn.net>
 <20190514180810.GA109557@google.com>
 <20190514121623.0314bf07@lwn.net>
 <20190514231902.GA12893@google.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_064556_861718_E53B45E1 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 yamada.masahiro@socionext.com, mpe@ellerman.id.au,
 linux-kselftest@vger.kernel.org, shuah@kernel.org, robh@kernel.org,
 linux-nvdimm@lists.01.org, frowand.list@gmail.com, knut.omang@oracle.com,
 kieran.bingham@ideasonboard.com, Felix Guo <felixguoxiuping@gmail.com>,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at, sboyd@kernel.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com,
 khilman@baylibre.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gVHVlLCAxNCBNYXkgMjAxOSAxNjoxOTowMiAtMDcwMApCcmVuZGFuIEhpZ2dpbnMgPGJyZW5k
YW5oaWdnaW5zQGdvb2dsZS5jb20+IHdyb3RlOgoKPiBIbW1tLi4ucHJvYmFibHkgcHJlbWF0dXJl
IHRvIGJyaW5nIHRoaXMgdXAsIGJ1dCBEb2N1bWVudGF0aW9uL2Rldi10b29scy8KPiBpcyBraW5k
IG9mIHRocm93biB0b2dldGhlci4KCldhaXQgYSBtaW51dGUsIG1hbi4uLiAqSSogY3JlYXRlZCB0
aGF0IGRpcmVjdG9yeSwgYXJlIHlvdSBpbXB1Z25pbmcgbXkKd29yaz8gOikKCkJ1dCB5ZXMsICJr
aW5kIG9mIHRocm93biB0b2dldGhlciIgaXMgYSBnb29kIGRlc2NyaXB0aW9uIG9mIG11Y2ggb2YK
RG9jdW1lbnRhdGlvbi8uICBBIG51bWJlciBvZiBwZW9wbGUgaGF2ZSBiZWVuIHdvcmtpbmcgZm9y
IHllYXJzIHRvIG1ha2UKdGhhdCBiZXR0ZXIsIHdpdGggc29tZSBzdWNjZXNzLCBidXQgdGhlcmUg
aXMgYSBsb25nIHdheSB0byBnbyB5ZXQuICBUaGUKZGV2LXRvb2xzIGRpcmVjdG9yeSBpcyBhbiBp
bXByb3ZlbWVudCBvdmVyIGhhdmluZyB0aGF0IHN0dWZmIHNjYXR0ZXJlZCBhbGwKb3ZlciB0aGUg
cGxhY2Ug4oCUIGF0IGxlYXN0IGl0J3MgYWN0dWFsbHkgdGhyb3duIHRvZ2V0aGVyIOKAlCBidXQg
aXQncyBub3QgdGhlCmVuZCBwb2ludC4KCj4gSXQgd291bGQgYmUgbmljZSB0byBwcm92aWRlIGEg
Y29oZXJlbnQgb3ZlcnZpZXcsIG1heWJlIHByb3ZpZGUgc29tZQo+IGJhc2ljIGdyb3VwaW5nIGFz
IHdlbGwuCj4gCj4gSXQgd291bGQgYmUgbmljZSBpZiB0aGVyZSB3YXMga2luZCBvZiBhIGdlbnRs
ZSBpbnRyb2R1Y3Rpb24gdG8gdGhlCj4gdG9vbHMsIHdoaWNoIG9uZXMgeW91IHNob3VsZCBiZSBs
b29raW5nIGF0LCB3aGVuLCB3aHksIGV0Yy4KClRvdGFsIGFncmVlbWVudC4gIEFsbCB3ZSBuZWVk
IGlzIHNvbWVib2R5IHRvIHdyaXRlIGl0ISAgOikKClRoYW5rcywKCmpvbgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0
CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
