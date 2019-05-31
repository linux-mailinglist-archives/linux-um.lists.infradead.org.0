Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AF430C92
	for <lists+linux-um@lfdr.de>; Fri, 31 May 2019 12:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:Subject:From:References:To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wMJDAi4Z/BdT06xArNHV2tRIJWS6o+eA7HJsRfzKwA=; b=Kq8nYgJKlEOMTA
	rhLjTBxK01ti85phpMlIuI9xSXlNJ1RbFmIsrYD/U6zV9Yxa6FfZPwfVuJnp7bKQugep6vhh1k2mY
	6fFZ/737Rhzl2eFTjF9tzlMcVwNxQw+F+XUu+K2/di8L9+DDOxSdFNSJBUm8V/7t7qqK783IYbzw+
	/n4onesEJ98kmfgGfY5hEipTnHheXSBQs4yVD3s9LssDIpWSZAx7KK08SZB3pMco3Fkg3Voe10hLF
	A5lhN1ujzRHdgCWHEJ+t2KnytlBFi5dO5ViXXGFsymNMonsa3Itmes0cP2BDb1FVo/DCYUoEc/Qy0
	tHf1nfb3Hmrkv4KUkVgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWeno-0004zs-Fh; Fri, 31 May 2019 10:30:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWenl-0004zV-Rm
 for linux-um@lists.infradead.org; Fri, 31 May 2019 10:30:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id x3so423928pff.11
 for <linux-um@lists.infradead.org>; Fri, 31 May 2019 03:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:to:cc:references:from:openpgp:autocrypt:subject:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rfxQPegvk9K6K4SN2QWBppR4eHdjDBPnIA2qnHuM704=;
 b=F1E4xtd+b1OK7r9hwTcORRhhD+ZrT0pJfL75VeINe8PfSRSdgm32JAAdzJWSnk4inV
 EitS7TrkrgFDZVOnWqv6VlMfkoSxvjfUvqqmHg45C6dNOXKiLHWJX2y/S+sLlLoPfGnD
 hF9WZsJpK4uUWCeSax0ecvWax7/C7uyXxqWJwjeduqPCwQvaXV/cPqcepnlVF5pBe/pk
 0Uz+pLoQZEeeGN69WvO/ctbwDiHXSXmTb6wFQYWXXK9MKj6UWvDdBT0k/v0AOo5lxOve
 oRfiDpBgjqPWKm9Rb6/kOAAy93lK0P8giuTUJ2SyZ0EK7mbGSXlkBjKkAuUdIWVXxmLm
 8p0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:to:cc:references:from:openpgp:autocrypt
 :subject:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=rfxQPegvk9K6K4SN2QWBppR4eHdjDBPnIA2qnHuM704=;
 b=EGpNr6+DJOU4TK1Izmvd3f6r5hhank9gVEBq5dBDihMOz8qk8qVgjtBnmZZYEc/aes
 aRLH4hijBL6p6HeTsOgm9gJOFgEa9EfzkOP93whp4mVyM7P8L0zSDjbfKlar3SUCaLo9
 V1UXx6hx7a7a6fnY1TblnkYSXxLL2sP8yaVJ3gxQBR88Z3MPX5eVjeGw6KHXFmTKPuyn
 cLvQ62lrMZIOFpDbaQNOTsYcoPgbO0JqY8NOsMqxiWLo5N1KqvEgAhL1kaoL7TDeoIYv
 lfdFpGqe0JWYUCl/MzPb7V/QnCK8j3FDIeiMumEb6/nHzpZXHIx54lun5xWqBbPoh16v
 X21Q==
X-Gm-Message-State: APjAAAWYUss4JcctwVz/acjGiYBnmRGOKj4huc1qesRy7kFgXv1rTeRb
 hSjGJeoRO9Xu+ADiGmRxox0=
X-Google-Smtp-Source: APXvYqxIQW3jDI8lHvxDzecm9adxZrCBeqQHrpPAR9hVe1poBFhYO5+3P1qU3FoWtq857hDLOOuWYw==
X-Received: by 2002:a17:90a:2263:: with SMTP id
 c90mr8320003pje.9.1559298619847; 
 Fri, 31 May 2019 03:30:19 -0700 (PDT)
Received: from mail1.cde.priv ([104.220.180.33])
 by smtp.gmail.com with ESMTPSA id j72sm5874656pje.12.2019.05.31.03.30.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 31 May 2019 03:30:19 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail1.cde.priv (Postfix) with ESMTP id BE4A55C1D7;
 Fri, 31 May 2019 03:30:17 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at cde.priv
Received: from mail1.cde.priv ([127.0.0.1])
 by localhost (mail1.cde.priv [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p1JAS7xnaY0G; Fri, 31 May 2019 03:30:16 -0700 (PDT)
Received: from [192.168.1.3] (unknown [192.168.1.3])
 by mail1.cde.priv (Postfix) with ESMTPS id B12F15C0D8;
 Fri, 31 May 2019 03:30:16 -0700 (PDT)
To: Bartosz Golaszewski <brgl@bgdev.pl>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
References: <20190411094944.12245-1-brgl@bgdev.pl>
 <20190411094944.12245-5-brgl@bgdev.pl>
 <CAFLxGvwb8YzNiXCXru8Tw9pxH9qoc7gAO4sk0MXK1Xmp7fm-2g@mail.gmail.com>
 <0e8fbdf3-c40d-e4e8-6235-c744ec7317c3@cambridgegreys.com>
 <684874198.48863.1557299587958.JavaMail.zimbra@nod.at>
 <CAMRc=MdsA7A1DdS1ZJ8NS8xtuCjgc_7WZD1797H3oZ=2w+fOBA@mail.gmail.com>
 <CAMRc=McCxvwHgk-3wYE0e+qxJNoHK0AmpJWjNsOZBmGF2yFT6Q@mail.gmail.com>
 <c5918fa9-ec37-9636-5230-57260f7e8427@cambridgegreys.com>
 <CAMRc=MeOHr0bKJYGgOrhHq4dYFwCnpYvuFAL3jZerwCPvQgC3Q@mail.gmail.com>
From: Dana Johnson <djohns042@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=djohns042@gmail.com; prefer-encrypt=mutual; keydata=
 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
 bq6xhfCQInKHA3cqxNE9sW06vSpGpF3X
Subject: Re: [RESEND PATCH 4/4] um: irq: don't set the chip for all irqs
Message-ID: <0aa6028b-7b7b-4123-07a3-786f700f3c14@gmail.com>
Date: Fri, 31 May 2019 03:30:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAMRc=MeOHr0bKJYGgOrhHq4dYFwCnpYvuFAL3jZerwCPvQgC3Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_033021_903001_ABD5B5B8 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (djohns042[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (djohns042[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (djohns042[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: djohns042@gmail.com
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gNS8xMS8xOSA1OjQ4IEFNLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+IHB0LiwgMTAg
bWFqIDIwMTkgbyAxODoyMiBBbnRvbiBJdmFub3YKPiA8YW50b24uaXZhbm92QGNhbWJyaWRnZWdy
ZXlzLmNvbT4gbmFwaXNhxYIoYSk6Cj4+Cj4+Cj4+IE9uIDEwLzA1LzIwMTkgMTc6MjAsIEJhcnRv
c3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4+PiBwdC4sIDEwIG1haiAyMDE5IG8gMTE6MTYgQmFydG9z
eiBHb2xhc3pld3NraSA8YnJnbEBiZ2Rldi5wbD4gbmFwaXNhxYIoYSk6Cj4+Pj4gxZtyLiwgOCBt
YWogMjAxOSBvIDA5OjEzIFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2QuYXQ+IG5hcGlz
YcWCKGEpOgo+Pj4+PiAtLS0tLSBVcnNwcsO8bmdsaWNoZSBNYWlsIC0tLS0tCj4+Pj4+Pj4gQ2Fu
IHlvdSBwbGVhc2UgY2hlY2s/Cj4+Pj4+Pj4gVGhpcyBwYXRjaCBpcyBhbHJlYWR5IHF1ZXVlZCBp
biAtbmV4dC4gU28gd2UgbmVlZCB0byBkZWNpZGUgd2hldGhlciB0bwo+Pj4+Pj4+IHJldmVydCBv
ciBmaXggaXQgbm93Lgo+Pj4+Pj4+Cj4+Pj4+PiBJIGFtIGxvb2tpbmcgYXQgaXQuIEl0IHBhc3Nl
ZCB0ZXN0cyBpbiBteSBjYXNlIChJIGRpZCB0aGUgdXN1YWwgcm91bmQpLgo+Pj4+PiBJdCB3b3Jr
cyBoZXJlIHRvby4gVGhhdCdzIHdoeSBJIG5ldmVyIG5vdGljZWQuCj4+Pj4+IFllc3RlcmRheSBJ
IG5vdGljZWQganVzdCBiZWNhdXNlIEkgbG9va2VkIGZvciBzb21ldGhpbmcgZWxzZSBpbiB0aGUg
a2VybmVsIGxvZ3MuCj4+Pj4+Cj4+Pj4+IFRoYW5rcywKPj4+Pj4gLy9yaWNoYXJkCj4+Pj4gSGks
Cj4+Pj4KPj4+PiBzb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHkgLSBJIGp1c3QgY2FtZSBiYWNrIGZy
b20gdmFjYXRpb24uCj4+Pj4KPj4+PiBJIHNlZSBpdCBoZXJlIHRvbywgSSdsbCBjaGVjayBpZiBJ
IGNhbiBmaW5kIHRoZSBjdWxwcml0IGFuZCBmaXggaXQgdG9kYXkuCj4+Pj4KPj4+PiBCYXJ0Cj4+
PiBIaSBSaWNoYXJkLCBBbnRvbiwKPj4+Cj4+PiBJJ20gbm90IHN1cmUgeWV0IHdoYXQgdGhpcyBp
cyBjYXVzZWQgYnkuIEl0IGRvZXNuJ3Qgc2VlbSB0byBicmVhawo+Pj4gYW55dGhpbmcgZm9yIG1l
IGJ1dCBzaW5jZSBpdCdzIGEgbmV3IGVycm9yIG1lc3NhZ2UgSSBndWVzcyBpdCdzIGJlc3QKPj4+
IHRvIHJldmVydCB0aGlzIHBhdGNoIChvdGhlcnMgYXJlIGdvb2QpIGFuZCByZXZpc2l0IGl0IGZv
ciB2NS4zLgo+Pgo+PiBDYW4geW91IHNlbmQgbWUgeW91ciBjb21tYW5kIGxpbmUgYW5kIC5jb25m
aWcgc28gSSBjYW4gdHJ5IHRvIHJlcHJvZHVjZSBpdC4KPj4KPiAKPiBTdXJlLAo+IAo+IHRoZSBj
b21tYW5kIGxpbmUgaXM6Cj4gCj4gLi9saW51eCByb290ZnN0eXBlPWhvc3RmcyByb290ZmxhZ3M9
PHBhdGggdG8gYSByZWd1bGFyIGJ1aWxkcm9vdAo+IHJvb3Rmcz4gcncgbWVtPTQ4TQo+IAo+IFRo
ZSBjb25maWcgaXMgdGhlIHJlZ3VsYXIgeDg2XzY0X2RlZmNvbmZpZyBmcm9tIGFyY2gvdW0uCj4g
Cj4gQmFydAo+IAogCkkgaGl0IHRoaXMgY29tcGlsaW5nIDUuMi4wLXJjMi0wMDAyNC1nYmVjNzU1
MGNjYTEwCgpJIGNhbiB0cmlnZ2VyOgoKVHJ5aW5nIHRvIHJlcmVnaXN0ZXIgSVJRIDExIEZEIDkg
VFlQRSAwIElEIChfX19fcHRydmFsX19fXykKd3JpdGVfc2lnaW9faXJxIDogdW1fcmVxdWVzdF9p
cnEgZmFpbGVkLCBlcnIgPSAtMTYKCmR1cmluZyBib290IHdoZW46CgojIENPTkZJR19VTUxfTkVU
X1ZFQ1RPUiBpcyBub3Qgc2V0CgpMb29raW5nIGF0IHRoZSBjb2RlIHRoZXJlIHNlZW1zIHRvIGJl
IGEgb25lIG9mZiBlcnJvcgppbiB0aGUgTEFTVF9JUlEgY2FsY3VsYXRpb24gd2hlbiBDT05GSUdf
VU1MX05FVF9WRUNUT1IgaXMgZW5hYmxlZC4KSW4gdGhhdCBjYXNlIHRoZSBwYXRjaCBzaG91bGQg
YmUgcmV2ZXJ0ZWQgYW5kIHRoZSBmb2xsb3dpbmcgYXBwbGllZDoKCgpkaWZmIC0tZ2l0IGEvYXJj
aC91bS9pbmNsdWRlL2FzbS9pcnEuaCBiL2FyY2gvdW0vaW5jbHVkZS9hc20vaXJxLmgKaW5kZXgg
NDllZDNlMzViMzVhLi5jZTdhNzhjM2JjZjIgMTAwNjQ0Ci0tLSBhL2FyY2gvdW0vaW5jbHVkZS9h
c20vaXJxLmgKKysrIGIvYXJjaC91bS9pbmNsdWRlL2FzbS9pcnEuaApAQCAtMjMsNyArMjMsNyBA
QAogI2RlZmluZSBWRUNUT1JfQkFTRV9JUlEgICAgICAgICAgICAgICAgMTUKICNkZWZpbmUgVkVD
VE9SX0lSUV9TUEFDRSAgICAgICA4CgotI2RlZmluZSBMQVNUX0lSUSAoVkVDVE9SX0lSUV9TUEFD
RSArIFZFQ1RPUl9CQVNFX0lSUSkKKyNkZWZpbmUgTEFTVF9JUlEgKFZFQ1RPUl9JUlFfU1BBQ0Ug
KyBWRUNUT1JfQkFTRV9JUlEgLSAxKQoKICNlbHNlCgpEYW5hCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxpc3QKbGludXgt
dW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXVtCg==
