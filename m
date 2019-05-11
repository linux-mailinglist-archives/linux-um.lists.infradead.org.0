Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0F51A7E5
	for <lists+linux-um@lfdr.de>; Sat, 11 May 2019 14:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9Yy0eE+YX79o2/GgOVESutrsX3jV0njrvBdGC+HvgA=; b=Qn0Mq4WIMdYZmh
	FOwn+EMK65herQsjqF5Qeve7EMcplJH/pK6r0/Q0yzgoi73DXxcfdAwegePXgdx69Ei1q7178b3hI
	YHAP+yA8ErEQicLjJH5o+6YTpqlmSKV/of1mq1HpTx68PZpR/ymMJ8WXVRS2g8ZNTFvp9kmX8/jm3
	zb7IsLhAKJvFhYQjGWUkFkx1YHh/DKrCw1LsMa9zuyDRET25VaGCC1+4q5KL9XgYWkCKcDnCN1k0e
	j71no2VScc1iTiZIjx6QALnMGUHaa/zv+yrXI45nC0rbCzdNn5ZagkV/DfXrWicgewNB8hpyrVxQq
	7HZRH1LwabBkPYh93C4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPRRE-0003Rw-Us; Sat, 11 May 2019 12:49:16 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPRRA-0003R5-9a
 for linux-um@lists.infradead.org; Sat, 11 May 2019 12:49:14 +0000
Received: by mail-it1-x141.google.com with SMTP id l7so13543036ite.2
 for <linux-um@lists.infradead.org>; Sat, 11 May 2019 05:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Zd9Zp9MAsLaVOIfM+3iMvyilHtpibiYoJjp6hLjLpc0=;
 b=OmGjgt7J5IsJ0nlDnn4zjCGMSK554FEokSjg0EiBaQeJ/RvZT7re6UejW/4+kuBLUz
 vKfosXNZYXnUWnljMFydRYmDORYWJjf4f94FtCuWgIKoNUUYuKG0EDBbgG5pnuRBl6Iv
 BX778ZtrFSRtFzmJjZwQME+zIEH/o8vax4bNxtzZNhjNKQEZc+m5vGlYbC7QQpPQseDK
 lJpFI/bXLK6EQcsN+/4/M0zkUUHPXrqiVHcyK3mb3k30fUVj3ZQydvHsFeT8eMnzbNSQ
 WJArYfc/L1QFJFuOq2ypUFA3zmfftBbYvC4qaxzbdRH2tEXtG5hiRCoY1jks2Q3X6YwK
 UiHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Zd9Zp9MAsLaVOIfM+3iMvyilHtpibiYoJjp6hLjLpc0=;
 b=fII18SsvZdlzHphzgnIDZyy+JxuqW+db3xfd8LtzRGcQ+NYPYHIFo2WBnIOgZb1kNw
 uNpQcqSYa/hTgcn0diaQvid7rCJzHCRggfkI8PXnenkVUZzw5gJN+WaWbZHlh1BMsLCH
 rVwFgSPV4y/hHNZL2HLX/IKnLrHNHSQ5L7eGj5X1t5dhgXuo2bwrmJmPGwpJlkzkU5fk
 G3QLIHOiM6ZjJndhp/Cw+1WChwqacg3UrYyoHHdMLtBgAOvNu9kf7oB5qvh3Xs//jg1y
 BHiA7NgQGRzMvwWlymVq8ZsD7Sdq+jC8NxXcd+e9jphheqYxGt1QcBDppIGdhKXaobSW
 QOtw==
X-Gm-Message-State: APjAAAV/vQCd0lnpR4PXQW2h1mFrpB40LjG4Gg2NBGy2CwRjc2Iy0rfX
 XdBPMJp+pWCBkHiJjr4WDRzWhqtSCbi97N/Z25Zdlw==
X-Google-Smtp-Source: APXvYqztIEDYo3alGkeqwDxIYarkNx5BaXoTQc/Nvp5SfuSqWrJrks0GwGQwAUdRLa/SjinEOEAxlxC/Q9kDPn3T04s=
X-Received: by 2002:a02:1986:: with SMTP id
 b128mr12277400jab.136.1557578949592; 
 Sat, 11 May 2019 05:49:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190411094944.12245-1-brgl@bgdev.pl>
 <20190411094944.12245-5-brgl@bgdev.pl>
 <CAFLxGvwb8YzNiXCXru8Tw9pxH9qoc7gAO4sk0MXK1Xmp7fm-2g@mail.gmail.com>
 <0e8fbdf3-c40d-e4e8-6235-c744ec7317c3@cambridgegreys.com>
 <684874198.48863.1557299587958.JavaMail.zimbra@nod.at>
 <CAMRc=MdsA7A1DdS1ZJ8NS8xtuCjgc_7WZD1797H3oZ=2w+fOBA@mail.gmail.com>
 <CAMRc=McCxvwHgk-3wYE0e+qxJNoHK0AmpJWjNsOZBmGF2yFT6Q@mail.gmail.com>
 <c5918fa9-ec37-9636-5230-57260f7e8427@cambridgegreys.com>
In-Reply-To: <c5918fa9-ec37-9636-5230-57260f7e8427@cambridgegreys.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sat, 11 May 2019 14:48:58 +0200
Message-ID: <CAMRc=MeOHr0bKJYGgOrhHq4dYFwCnpYvuFAL3jZerwCPvQgC3Q@mail.gmail.com>
Subject: Re: [RESEND PATCH 4/4] um: irq: don't set the chip for all irqs
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_054912_473944_B2D2D352 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

cHQuLCAxMCBtYWogMjAxOSBvIDE4OjIyIEFudG9uIEl2YW5vdgo8YW50b24uaXZhbm92QGNhbWJy
aWRnZWdyZXlzLmNvbT4gbmFwaXNhxYIoYSk6Cj4KPgo+IE9uIDEwLzA1LzIwMTkgMTc6MjAsIEJh
cnRvc3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4gPiBwdC4sIDEwIG1haiAyMDE5IG8gMTE6MTYgQmFy
dG9zeiBHb2xhc3pld3NraSA8YnJnbEBiZ2Rldi5wbD4gbmFwaXNhxYIoYSk6Cj4gPj4gxZtyLiwg
OCBtYWogMjAxOSBvIDA5OjEzIFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2QuYXQ+IG5h
cGlzYcWCKGEpOgo+ID4+PiAtLS0tLSBVcnNwcsO8bmdsaWNoZSBNYWlsIC0tLS0tCj4gPj4+Pj4g
Q2FuIHlvdSBwbGVhc2UgY2hlY2s/Cj4gPj4+Pj4gVGhpcyBwYXRjaCBpcyBhbHJlYWR5IHF1ZXVl
ZCBpbiAtbmV4dC4gU28gd2UgbmVlZCB0byBkZWNpZGUgd2hldGhlciB0bwo+ID4+Pj4+IHJldmVy
dCBvciBmaXggaXQgbm93Lgo+ID4+Pj4+Cj4gPj4+PiBJIGFtIGxvb2tpbmcgYXQgaXQuIEl0IHBh
c3NlZCB0ZXN0cyBpbiBteSBjYXNlIChJIGRpZCB0aGUgdXN1YWwgcm91bmQpLgo+ID4+PiBJdCB3
b3JrcyBoZXJlIHRvby4gVGhhdCdzIHdoeSBJIG5ldmVyIG5vdGljZWQuCj4gPj4+IFllc3RlcmRh
eSBJIG5vdGljZWQganVzdCBiZWNhdXNlIEkgbG9va2VkIGZvciBzb21ldGhpbmcgZWxzZSBpbiB0
aGUga2VybmVsIGxvZ3MuCj4gPj4+Cj4gPj4+IFRoYW5rcywKPiA+Pj4gLy9yaWNoYXJkCj4gPj4g
SGksCj4gPj4KPiA+PiBzb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHkgLSBJIGp1c3QgY2FtZSBiYWNr
IGZyb20gdmFjYXRpb24uCj4gPj4KPiA+PiBJIHNlZSBpdCBoZXJlIHRvbywgSSdsbCBjaGVjayBp
ZiBJIGNhbiBmaW5kIHRoZSBjdWxwcml0IGFuZCBmaXggaXQgdG9kYXkuCj4gPj4KPiA+PiBCYXJ0
Cj4gPiBIaSBSaWNoYXJkLCBBbnRvbiwKPiA+Cj4gPiBJJ20gbm90IHN1cmUgeWV0IHdoYXQgdGhp
cyBpcyBjYXVzZWQgYnkuIEl0IGRvZXNuJ3Qgc2VlbSB0byBicmVhawo+ID4gYW55dGhpbmcgZm9y
IG1lIGJ1dCBzaW5jZSBpdCdzIGEgbmV3IGVycm9yIG1lc3NhZ2UgSSBndWVzcyBpdCdzIGJlc3QK
PiA+IHRvIHJldmVydCB0aGlzIHBhdGNoIChvdGhlcnMgYXJlIGdvb2QpIGFuZCByZXZpc2l0IGl0
IGZvciB2NS4zLgo+Cj4gQ2FuIHlvdSBzZW5kIG1lIHlvdXIgY29tbWFuZCBsaW5lIGFuZCAuY29u
ZmlnIHNvIEkgY2FuIHRyeSB0byByZXByb2R1Y2UgaXQuCj4KClN1cmUsCgp0aGUgY29tbWFuZCBs
aW5lIGlzOgoKLi9saW51eCByb290ZnN0eXBlPWhvc3RmcyByb290ZmxhZ3M9PHBhdGggdG8gYSBy
ZWd1bGFyIGJ1aWxkcm9vdApyb290ZnM+IHJ3IG1lbT00OE0KClRoZSBjb25maWcgaXMgdGhlIHJl
Z3VsYXIgeDg2XzY0X2RlZmNvbmZpZyBmcm9tIGFyY2gvdW0uCgpCYXJ0CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxpc3QK
bGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
