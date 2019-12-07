Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4AE115A9F
	for <lists+linux-um@lfdr.de>; Sat,  7 Dec 2019 02:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5hu2DXXAH9UQnCVqHxE0XLQVXWKHU5oBstJECqxXHI=; b=lvW7ci7jWshq/Z
	pEIrbZ/mRKCKO+LE876g5IL7L6rdXkoLzVAEnBBoOS8kvt6zC0S1wsoELyh2QfZM5D3Sz/LDh9cc/
	A2hLbD9WdBMdFqZ5uCil9ADexfhWPSnaTyIBnA+b/C7WcT1t5vKUy6dz78roAda17bwokpssoofJ6
	/QnI1Wg+VAIe+fZyKKAhW5wwsoZkS8CpG10/Ixe9gxHXbWbs+lkgkUg3OdZJ1xqU00j0lOrRJeIZc
	sASNfxmSIHsr0yVsiqoJ6J7vehAhJhSAcXfkTqr3tFphx7fgqcyojq9vDBKsaIPerI8agDRpknslL
	T10seEHT3X1jotsGXl6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idOmf-0003YH-1P; Sat, 07 Dec 2019 01:21:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idOmb-0003Xn-Hr
 for linux-um@lists.infradead.org; Sat, 07 Dec 2019 01:21:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id d199so4229023pfd.11
 for <linux-um@lists.infradead.org>; Fri, 06 Dec 2019 17:21:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=yEn14k+clLvmNnACMsBkTxLXcZL5KjXBaody+Go5YQA=;
 b=RVktpsWsyDJ2zmC5kzzH0C65ikVPwt/aU1ngdwnfogURM6j3WsR3m2gPL5rckVuipn
 37OfiaQUZKb4e4iABBSyMR3akYVbt2fuiScLpd0tFMdOMr06qAkUA5GZ0rNg3zN9ZOR3
 3sVtvBvg67wLijt8omw4z3DHgUa3jjQldzcQDG0U8kMq7o8rF703wcLWkYrNVkq/Dmay
 rmfOzXv2nDlUtcLk+xRbhOHolVoOUsmpJ3+X1dbxmT542OBbniJALQgylZCRjjJ96WGG
 WdtXyXWdVYqXsriR1Ay4dUdrbOA7+4QG2AuDIIUfl7qWV04gAKemav+hoX3HsGy18eZA
 KNvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=yEn14k+clLvmNnACMsBkTxLXcZL5KjXBaody+Go5YQA=;
 b=Zer8/eUxrG6+oeJn10A1uO2ShPGQhvmH+FlHfsbDkkYZRqxRymzbwzgYVkJemdbyo8
 kzq8r7BCcdxhXRrsKZ3h0mGgbVvSXMw8n6Se4XsgFKIq1BphRGGcmYv/R70J+xl9A89G
 W9oAoYtbCgF7QKHNpTyT7GRUJTv9tQSP3d9K9Yf72G336ufFfMunwiaFqJnlvTpsmTM4
 5c6C3Sm0oPgPJ6DYWhyVXSDE0O8g3abxx7omjgJCXJCkxoYrz0TzHEiejMH4jVA/0iFd
 EemLGl5yzjOb7fE0AAW8/p+mfX1Yvb2rfA8AdKjq16Bhtw40WmgbsLEmXqrXlXIA2HyE
 zlVw==
X-Gm-Message-State: APjAAAVENaRv7foB9IW6tzn7i06P5roULlq831eQt4rxg7Rp/+DX5TfU
 3tl4oC1Vf3z4WI/uz2wbkEKhWw==
X-Google-Smtp-Source: APXvYqzfNrW47rjcKV8huzvGoXPAKRUzD/VyzmnJ6kimzv2+42ubB+gwb5kQUmNkYzvseub7koSQ9A==
X-Received: by 2002:a63:4f5c:: with SMTP id p28mr6632289pgl.409.1575681673644; 
 Fri, 06 Dec 2019 17:21:13 -0800 (PST)
Received: from google.com ([2620:15c:2cb:1:e90c:8e54:c2b4:29e7])
 by smtp.gmail.com with ESMTPSA id b65sm17348072pgc.18.2019.12.06.17.21.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 17:21:12 -0800 (PST)
Date: Fri, 6 Dec 2019 17:21:08 -0800
From: Brendan Higgins <brendanhiggins@google.com>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Subject: Re: [RFC v1 1/2] um: drivers: remove support for UML_NET_PCAP
Message-ID: <20191207012108.GA220741@google.com>
References: <20191206020153.228283-1-brendanhiggins@google.com>
 <20191206020153.228283-2-brendanhiggins@google.com>
 <f217945d-ab64-10cc-bb12-3a4d810ff25a@cambridgegreys.com>
 <CAFd5g45cSKATfw4GKPw6QdhQKDNi=0gcDRjQ7N0T1XrdtSTPrg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFd5g45cSKATfw4GKPw6QdhQKDNi=0gcDRjQ7N0T1XrdtSTPrg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_172117_614056_BAB4564E 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: johannes.berg@intel.com, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Gow <davidgow@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gRnJpLCBEZWMgMDYsIDIwMTkgYXQgMDQ6MzI6MzRQTSAtMDgwMCwgQnJlbmRhbiBIaWdnaW5z
IHdyb3RlOgo+IE9uIFRodSwgRGVjIDUsIDIwMTkgYXQgMTE6MjMgUE0gQW50b24gSXZhbm92Cj4g
PGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5jb20+IHdyb3RlOgo+IFsuLi5dCj4gPiAxLiBU
aGVyZSBpcyBhIHByb3Bvc2VkIHBhdGNoIGZvciB0aGUgYnVpbGQgc3lzdGVtIHRvIGZpeCBpdC4K
ClNvIEkganVzdCB0cmllZCB0aGUgcGF0Y2ggeW91IGxpbmtlZCBvbiB0aGUgY292ZXIgbGV0dGVy
WzFdLCBhbmQgSSBhbQpzdGlsbCBnZXR0aW5nIHRoZSBidWlsZCBlcnJvciBkZXNjcmliZWQgYWJv
dmU6CgphcmNoL3VtL2RyaXZlcnMvcGNhcF91c2VyLmM6MzU6MTI6IGVycm9yOiBjb25mbGljdGlu
ZyB0eXBlcyBmb3Ig4oCYcGNhcF9vcGVu4oCZCiBzdGF0aWMgaW50IHBjYXBfb3Blbih2b2lkICpk
YXRhKQogICAgICAgICAgICBefn5+fn5+fn4KSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC91c3IvaW5j
bHVkZS9wY2FwLmg6NDMsCiAgICAgICAgICAgICAgICAgZnJvbSBhcmNoL3VtL2RyaXZlcnMvcGNh
cF91c2VyLmM6NzoKL3Vzci9pbmNsdWRlL3BjYXAvcGNhcC5oOjg1OToxODogbm90ZTogcHJldmlv
dXMgZGVjbGFyYXRpb24gb2Yg4oCYcGNhcF9vcGVu4oCZIHdhcyBoZXJlCiBQQ0FQX0FQSSBwY2Fw
X3QgKnBjYXBfb3Blbihjb25zdCBjaGFyICpzb3VyY2UsIGludCBzbmFwbGVuLCBpbnQgZmxhZ3Ms
CgpMb29raW5nIGF0IHRoZSBwYXRjaCwgSSB3b3VsZG4ndCBleHBlY3QgaXQgdG8gc29sdmUgdGhp
cyBwcm9ibGVtLgoKQXJlIHRoZXJlIG1heWJlIGRpZmZlcmVudCBjb25mbGljdGluZyBsaWJwY2Fw
LWRldiBsaWJyYXJpZXMgYW5kIEkgaGF2ZQp0aGUgd3Jvbmcgb25lPyBPciBpcyB0aGlzIGp1c3Qg
c3RpbGwgYnJva2VuPwoKPiA+IDIuIFdlIHNob3VsZCBiZSByZW1vdmluZyBhbGwgb2xkIGRyaXZl
cnMgYW5kIHJlcGxhY2luZyB0aGVtIHdpdGggdGhlCj4gPiB2ZWN0b3Igb25lcy4KPiAKPiBIbW0u
Li5kb2VzIHRoaXMgbWVhbiB5b3Ugd291bGQgZW50ZXJ0YWluIGEgcGF0Y2ggcmVtb3ZpbmcgYWxs
IHRoZQo+IG5vbi12ZWN0b3IgVU1MIG5ldHdvcmsgZHJpdmVycz8gSSB3b3VsZCBiZSBoYXBweSB0
byBzZWUgVkRFIGdvIGFzCj4gd2VsbC4KPiAKPiBJbiBhbnkgZXZlbnQsIGl0IHNvdW5kcyBsaWtl
IEkgc2hvdWxkIHByb2JhYmx5IGRyb3AgdGhpcyBwYXRjaCBhcyBpdAo+IGlzIGN1cnJlbnRseS4K
PiAKPiBUaGFua3MhCgpbMV0gaHR0cHM6Ly9idWdzLmRlYmlhbi5vcmcvY2dpLWJpbi9idWdyZXBv
cnQuY2dpP2J1Zz05Mzg5NjIjNzkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
dW0K
