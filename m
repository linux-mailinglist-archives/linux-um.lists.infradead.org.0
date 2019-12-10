Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A42E119DC5
	for <lists+linux-um@lfdr.de>; Tue, 10 Dec 2019 23:40:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=if2KP20heakKGNdM2cep48JLXJrS8X6447fC/8zdRkg=; b=MnUvC2AhG8UoMs
	sMPp/pT+UcYEyVBxIJA1FMUhi1p98HmWW29I6nEcTqNwXr6lWyXNorQ+zLWnkDgWe1NoLisQvgXDz
	mRYgOeskBb5ayNj1AT0abeMZCsrf9Zopnj+xPNOfcku6sqF66dPrAypttSdGpLmg/2gNECpeJXmr6
	uu+MqZhHE3sy867T2CoAdKwhFUSRauA+3w2yZcCUTMguONOTn4k0rhfNBSWwFKN/BFg4LOKOQZVw1
	I+8ZjkpFLaDjisTplmA3MOkee0TwESJ/S42cfi43ohPLIDKgtrOg6Urk4s0r8/oQGdgFk5EwGNabw
	oTCIXKW9aWg14eZorZJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieoBL-0001GN-PI; Tue, 10 Dec 2019 22:40:39 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieoBI-0001Ff-Kk
 for linux-um@lists.infradead.org; Tue, 10 Dec 2019 22:40:38 +0000
Received: by mail-pg1-x541.google.com with SMTP id k3so8953947pgc.3
 for <linux-um@lists.infradead.org>; Tue, 10 Dec 2019 14:40:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WhKcV9MhcHZ+rIDrMbDQc0mCzV2/LXUFgnxbFQ0koe4=;
 b=fyRCRyjbRw/ahnal1DJZEhKbTukOYXWTOelfdC8IxlZgyJU+E3zpokgvCb1OZDcZX0
 jEDUuL8VcXF5Zb0x26s2whsrtlzlfAyiWCiOvfgIznuT7lnviKisWYSUAGwUkKWKtvsR
 6C4zCpSjJYjo6TgSp3Vp5idWbKVS57L/XUoJFEAYFjul+FGbzK1aeXcoHpFpcbMZZTSu
 6KxjbQZLq3putByW3nDo65b5EQUTK5bPAVPk9vdsixG1I13zhNmCBAq6cd9QjUVlAOFd
 FwIHkUCTi73L9mmgrYXepJZs6Ni9rfM56GzZ+SAjWh58R5h9IzpU7QSmtnmb68XxAyDh
 jY0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WhKcV9MhcHZ+rIDrMbDQc0mCzV2/LXUFgnxbFQ0koe4=;
 b=kvqVB2GZl1DzMlgjbBqbvzC4J+GJnhrnvFQREtGgPBtzPdz736Gr/gUsH4VdttQU3a
 tuvIPeaa0QOVac3i23Rt7evhzVQCc6HTWRGjYZE9QJmTfktL45eeLYwXNEzBX923wA8a
 KK+VHJw3TGQ/ei7qKCTjPYkaEOeVp6ItXbzRXbIcghUMnGvYz4htqBSej0OeFR6WaCmX
 LxnXdYjT4toqPEJRtHf32eKoIZoq7g85WvohcvDJojCaI2uYVWjBU5FYtGC4YPMtIfc9
 PVbHmN8jfxtxEtwIGM0R+c3cAf79SaWs3wGv071y0uvws1D7Ecoc+yG9nmtp0kN1/LbC
 IRdg==
X-Gm-Message-State: APjAAAUtXIj9R129NusriQ1Tcrt5xnRBBMCQ94/DkIr0xRXyewt8/AFU
 FfhwvYAyLXtapGttdiWOpBWj953YC1vPvxrF+Ne8fS3X0bMq5Q==
X-Google-Smtp-Source: APXvYqziJWsPEGOvugy3+CzJsahNAxfE/CC9fJFp4r9R7cQDicZqjz0W5POh7mTSbWDdnZwsIhgGNBtzww4m99wZcsc=
X-Received: by 2002:a63:480f:: with SMTP id v15mr481015pga.201.1576017635129; 
 Tue, 10 Dec 2019 14:40:35 -0800 (PST)
MIME-Version: 1.0
References: <20191206020153.228283-1-brendanhiggins@google.com>
 <20191206020153.228283-2-brendanhiggins@google.com>
 <f217945d-ab64-10cc-bb12-3a4d810ff25a@cambridgegreys.com>
 <CAFd5g45cSKATfw4GKPw6QdhQKDNi=0gcDRjQ7N0T1XrdtSTPrg@mail.gmail.com>
 <20191207012108.GA220741@google.com>
 <15f048d3-07ab-61c1-c6e0-0712e626dd33@cambridgegreys.com>
 <CAFd5g448yZ5nSVLnN0gvsv3jLnhWG+dzJgvH1jdV+s2eTq4wxg@mail.gmail.com>
 <1785498655.111829.1575936178298.JavaMail.zimbra@nod.at>
 <87f182c6-82a3-d696-72e4-ddaa781a655b@cambridgegreys.com>
In-Reply-To: <87f182c6-82a3-d696-72e4-ddaa781a655b@cambridgegreys.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 10 Dec 2019 14:40:24 -0800
Message-ID: <CAFd5g46osmFBka0X60A+_mmetpreG+abnh_+GQmVrr+PPxrqxg@mail.gmail.com>
Subject: Re: [RFC v1 1/2] um: drivers: remove support for UML_NET_PCAP
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_144036_709356_3E1571FC 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Johannes Berg <johannes.berg@intel.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, davidgow <davidgow@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gTW9uLCBEZWMgOSwgMjAxOSBhdCAxMToxNCBQTSBBbnRvbiBJdmFub3YKPGFudG9uLml2YW5v
dkBjYW1icmlkZ2VncmV5cy5jb20+IHdyb3RlOgo+Cj4gT24gMTAvMTIvMjAxOSAwMDowMiwgUmlj
aGFyZCBXZWluYmVyZ2VyIHdyb3RlOgo+ID4gLS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0t
LQo+ID4+IFZvbjogIkJyZW5kYW4gSGlnZ2lucyIgPGJyZW5kYW5oaWdnaW5zQGdvb2dsZS5jb20+
Cj4gPj4+IElNSE8gd2Ugc2hvdWxkIGF0IGxlYXN0IG1hcmsgdGhlbSBhcyAib2Jzb2xldGUiIGFu
ZCBzdGFydCBwcmVwYXJpbmcgdG8KPiA+Pj4gcmVtb3ZlIHRoZW0uCj4gPj4KPiA+PiBBbHJpZ2h0
LCBJIHdpbGwgc2VuZCBhIHBhdGNoIG91dCB3aGljaCBtYXJrcyB0aGUgb3RoZXIgbmV0d29yayBk
cml2ZXJzCj4gPj4gYXMgIm9ic29sZXRlIi4KPiA+Pgo+ID4+IENsYXJpZmljYXRpb246IFNob3Vs
ZCBJIG1hcmsgYWxsIFVNTCBuZXR3b3JrIGRldmljZXMgYXMgIm9ic29sZXRlIgo+ID4+IGV4Y2Vw
dCBmb3IgTkVUX1ZFQ1RPUj8gRGFlbW9uIGFuZCBNQ0FTVCBsb29rZWQgdG8gbWUgKEkgYW0gbm90
IGEKPiA+PiBuZXR3b3JraW5nIGV4cGVydCksIGxpa2UgdGhleSBtaWdodCBub3QgYmUgY292ZXJl
ZCBieSB2ZWN0b3IuCj4gPgo+ID4gTm8uIFdoeT8KPiA+Cj4gPiBUaGFua3MsCj4gPiAvL3JpY2hh
cmQKPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+ID4gbGludXgtdW0gbWFpbGluZyBsaXN0Cj4gPiBsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQu
b3JnCj4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXVtCj4gPgo+IEF0IGxlYXN0IHBjYXAgYW5kIHZkZSBhcmUgbWFpbnRlbmFuY2UgaXNzdWVzLiBU
aGV5IGRvIG5vdCBldmVuIGJ1aWxkIHRvZGF5Lgo+Cj4gT2ZmIHRoZSB0b3Agb2YgbXkgaGVhZCwg
ZGFlbW9uIG5lZWRzIGZpeGVzIHRvIHRoZSBzd2l0Y2ggLSBpdCBoYXMgYW4KPiBPKG4pIHBlcmZv
cm1hbmNlIGhpdCBmb3Igbj0ibnVtYmVyIG9mIHBvcnRzIiBhcyB3ZWxsIGFzIGEgZmV3IG90aGVy
IGlzc3Vlcy4KPgo+IFRhcCBoYXMgYSBmdWxseSBmdW5jdGlvbmFsIHJlcGxhY2VtZW50Cj4KPiBQ
Y2FwIGhhcyBhIGZ1bGx5IGZ1bmN0aW9uYWwgcmVwbGFjZW1lbnQKPgo+IG1jYXN0IGZvciAyIGlu
c3RhbmNlcyBpcyBmdW5jdGlvbmFsbHkgZXF1aXZhbGVudCB0byBydW5uaW5nIGwydHAgb3IgZ3Jl
Cj4gYmFjay10by1iYWNrLgo+Cj4gSU1ITyB3ZSBjYW4gc3RhcnQgbWFya2luZyBzb21lIG9mIHRo
ZW0gYXMgb2Jzb2xldGUuCgpJdCBsb29rZWQgdG8gbWUgbGlrZSB0aGlzIGRpc2N1c3Npb24gaXMg
b25nb2luZzsgaG93ZXZlciwgaXQgc2VlbWVkCmxpa2UgdGhlIGRpc2N1c3Npb24gbWlnaHQgYmUg
Ym9pbGluZyBkb3duIHRvICp3aGljaCogZHJpdmVycyBzaG91bGQgYmUKbWFya2VkIG9ic29sZXRl
LCBzbyBJIGRlY2lkZWQgdG8gZ28gYWhlYWQgYW5kIHNlbmQgYSBwYXRjaCB3aGljaCBtYXJrcwpl
dmVyeXRoaW5nIGFzIGRlcHJlY2F0ZWQuIEkgZmlndXJlZCBpdCB3b3VsZCBtYWtlIGl0IGVhc2ll
ciB0byBmb2N1cwp0aGUgY29udmVyc2F0aW9uIG9uIHdoYXQsIGlmIGFueXRoaW5nLCBzaG91bGQg
YmUgbWFya2VkIG9ic29sZXRlOgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDE5MTIx
MDIyMzQwMy4yNDQ4NDItMS1icmVuZGFuaGlnZ2luc0Bnb29nbGUuY29tL1QvI3UKCkFsc28sIEFu
dG9uLCBJIGZsYXQgb3V0IHN0b2xlIGEgYnVuY2ggb2YgeW91ciBjb21tZW50cyBvbiB0aGlzIHRo
cmVhZAp0byBtYWtlIG15IGNvbW1pdCBtZXNzYWdlLiBKdXN0IHJlc3BvbmQgd2l0aCB0aGUgYXBw
cm9wcmlhdGUgdGFncwooY28tZGV2ZWxvcGVkLWJ5LCBldGMpIGlmIHlvdSB3YW50IHRvIGJlIGNy
ZWRpdGVkIGZvciB0aGVtLiBBcyBpdCBpcywKSSBtYXJrZWQgeW91IGFzICJzdWdnZXN0ZWQtYnki
LgoKQ2hlZXJzIQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
