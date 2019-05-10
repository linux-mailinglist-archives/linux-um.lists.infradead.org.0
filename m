Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CFD1A149
	for <lists+linux-um@lfdr.de>; Fri, 10 May 2019 18:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zagPnU9V+1UBKSoDulIBcsL1Y0Umxe6WV8x3q7FBcns=; b=Dl3XFctaLklNrs
	kpqEiy1x2/Wrdo9BQsfUuN/Qng3343Cuq2Tw1e61YQs37tT6TlX1QJ5ghFSeGDxx9aJGdo1aYFnMw
	IeQh6mwV2D49wrouJn3S3UCTbwmKjs2uSpiDlvLEllfXux8QtnlpaupyQj4D6FToJgksrLlx/sccr
	rnAf5LBqdfU9CYiyq9j+rWM43AQTMluZuXEHQygbroLkTBHB6ZCrgUjtnQDnwUWgTnnTzPvPRYDOX
	EEc1xsZpCfK70x1YBNQEp1IhUAOuTRAELk4irNtBDgNtl+TdR5k28CvG+80tWZlPVh3JXuKlFlj7a
	Vz1IBiKwqx6aUm2h/AEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP8GJ-0002D3-BT; Fri, 10 May 2019 16:20:43 +0000
Received: from mail-it1-x12e.google.com ([2607:f8b0:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP8GF-0002Ce-Tg
 for linux-um@lists.infradead.org; Fri, 10 May 2019 16:20:41 +0000
Received: by mail-it1-x12e.google.com with SMTP id p18so7995811itm.1
 for <linux-um@lists.infradead.org>; Fri, 10 May 2019 09:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=12k3jWQ0JutayB4pYTFiifF3qbZAFod36oxGbGWYTL4=;
 b=DM1MD4xkQL6qZVNRbFsqulgRFd7kcuZeaaF1otjmrfxY6P35bMMGBmFNpP7uuyqu59
 LCrtr60OPM+MIvJ8mTs8SDvfWBzsNDFJkN0t+7jXf5pF4Q/7jCXHV7iCb9Gc8R++k5Ch
 SIdl8H6o5ZUlkE7RC3C0sQ1cBXoitSI+t9w/ai3+C3OMG3+fs5pfuAoww4+2ksl/M41i
 qLbdVqhmFcQjYCBgmOy9FOBJHwNt31GzIddfg6oQ/36kLgUabQWBdKqFnUcdknD5am9E
 LHTd1oRI+8T58ABXPcrSQOXM6RUm28+CIQW1I3EaH0LLwMmJEGtdEwVxmGjIPTXzz760
 2JEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=12k3jWQ0JutayB4pYTFiifF3qbZAFod36oxGbGWYTL4=;
 b=dKyQf8mkCCk1RR4DpDSD1/uXTZHwmr+G/oVzw+AmsvoW3cCOTuXqoQLUjXUhUWuO3d
 rd96U8N36GWGwOGXifTHk9j5cZUFBh6AqbiFd2Cd6avRbLHzTMbApDGSQ5TED2xpqB61
 XtmkS+6qn05bAcZ92lkljjkFroJCnAlg/BZN4RILwRzEPZB6Edsrx3rvgMEpyK/+gA5y
 oQX3xYjhnbPkaRfPVqbuR9Qqqj1TqEg6VfCxyD2SaJDxY0cOLQ+L+0Wb0xEml1lYxpDy
 x+x/bKfp6Q0JoXqsMg7GiDcqlLt7CADeUKRI9C/Y6VJxomrrR7MGTUAOe1jnoSsXdRPl
 Vb+A==
X-Gm-Message-State: APjAAAWtDKguvmSif2d7/imqAsNT3R272Q/Umu7U/5rcq3C8mfkmwmeC
 YublIHwIxmMMLcVpmwDS/IYANm9wR2rQ7hjmP6CVnQ==
X-Google-Smtp-Source: APXvYqy6r4u/9FxZ/sqXyVZnJLhaLccKOai9l9fDW51iJ7io13Qgg+/BFMRaQhJVVdqUgo52HfdHzZtLHjbIJcT/gz0=
X-Received: by 2002:a02:1986:: with SMTP id b128mr8973936jab.136.1557505238682; 
 Fri, 10 May 2019 09:20:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190411094944.12245-1-brgl@bgdev.pl>
 <20190411094944.12245-5-brgl@bgdev.pl>
 <CAFLxGvwb8YzNiXCXru8Tw9pxH9qoc7gAO4sk0MXK1Xmp7fm-2g@mail.gmail.com>
 <0e8fbdf3-c40d-e4e8-6235-c744ec7317c3@cambridgegreys.com>
 <684874198.48863.1557299587958.JavaMail.zimbra@nod.at>
 <CAMRc=MdsA7A1DdS1ZJ8NS8xtuCjgc_7WZD1797H3oZ=2w+fOBA@mail.gmail.com>
In-Reply-To: <CAMRc=MdsA7A1DdS1ZJ8NS8xtuCjgc_7WZD1797H3oZ=2w+fOBA@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 10 May 2019 18:20:27 +0200
Message-ID: <CAMRc=McCxvwHgk-3wYE0e+qxJNoHK0AmpJWjNsOZBmGF2yFT6Q@mail.gmail.com>
Subject: Re: [RESEND PATCH 4/4] um: irq: don't set the chip for all irqs
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_092040_003169_52E3F890 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12e listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

cHQuLCAxMCBtYWogMjAxOSBvIDExOjE2IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYu
cGw+IG5hcGlzYcWCKGEpOgo+Cj4gxZtyLiwgOCBtYWogMjAxOSBvIDA5OjEzIFJpY2hhcmQgV2Vp
bmJlcmdlciA8cmljaGFyZEBub2QuYXQ+IG5hcGlzYcWCKGEpOgo+ID4KPiA+IC0tLS0tIFVyc3By
w7xuZ2xpY2hlIE1haWwgLS0tLS0KPiA+ID4+IENhbiB5b3UgcGxlYXNlIGNoZWNrPwo+ID4gPj4g
VGhpcyBwYXRjaCBpcyBhbHJlYWR5IHF1ZXVlZCBpbiAtbmV4dC4gU28gd2UgbmVlZCB0byBkZWNp
ZGUgd2hldGhlciB0bwo+ID4gPj4gcmV2ZXJ0IG9yIGZpeCBpdCBub3cuCj4gPiA+Pgo+ID4gPiBJ
IGFtIGxvb2tpbmcgYXQgaXQuIEl0IHBhc3NlZCB0ZXN0cyBpbiBteSBjYXNlIChJIGRpZCB0aGUg
dXN1YWwgcm91bmQpLgo+ID4KPiA+IEl0IHdvcmtzIGhlcmUgdG9vLiBUaGF0J3Mgd2h5IEkgbmV2
ZXIgbm90aWNlZC4KPiA+IFllc3RlcmRheSBJIG5vdGljZWQganVzdCBiZWNhdXNlIEkgbG9va2Vk
IGZvciBzb21ldGhpbmcgZWxzZSBpbiB0aGUga2VybmVsIGxvZ3MuCj4gPgo+ID4gVGhhbmtzLAo+
ID4gLy9yaWNoYXJkCj4KPiBIaSwKPgo+IHNvcnJ5IGZvciB0aGUgbGF0ZSByZXBseSAtIEkganVz
dCBjYW1lIGJhY2sgZnJvbSB2YWNhdGlvbi4KPgo+IEkgc2VlIGl0IGhlcmUgdG9vLCBJJ2xsIGNo
ZWNrIGlmIEkgY2FuIGZpbmQgdGhlIGN1bHByaXQgYW5kIGZpeCBpdCB0b2RheS4KPgo+IEJhcnQK
CkhpIFJpY2hhcmQsIEFudG9uLAoKSSdtIG5vdCBzdXJlIHlldCB3aGF0IHRoaXMgaXMgY2F1c2Vk
IGJ5LiBJdCBkb2Vzbid0IHNlZW0gdG8gYnJlYWsKYW55dGhpbmcgZm9yIG1lIGJ1dCBzaW5jZSBp
dCdzIGEgbmV3IGVycm9yIG1lc3NhZ2UgSSBndWVzcyBpdCdzIGJlc3QKdG8gcmV2ZXJ0IHRoaXMg
cGF0Y2ggKG90aGVycyBhcmUgZ29vZCkgYW5kIHJldmlzaXQgaXQgZm9yIHY1LjMuCgpCYXJ0Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBt
YWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
