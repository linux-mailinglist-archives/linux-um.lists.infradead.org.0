Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 190D23391D
	for <lists+linux-um@lfdr.de>; Mon,  3 Jun 2019 21:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:Subject:From:References:To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=unWNK01RoN8JishBT62gRu/0Nidsj9ncX/GbZuWAE6c=; b=CscPNF3u8kR5Di
	84tlhnFKo4f5jyXAZz+7vk11fyt6RXqfAAZ737vI28TWPZcPGpf6CpuMbJEvU+1a2IbifjXgC+NB8
	WjbhyELYkEJRtYMkOiUiibkBVHts3SQoorWqlH2+DYzZD1NVR5A+GLQACIR1IHp2xhgDuFTy7QZYR
	WJ8PzBgLGsN4+zACqPcKBRHBe8RZQPGLbOgg59pKRaFmhCbu3sZPjaeRteXlmgTQKJiXeQmUd9y3b
	nRVdcpEFq+egx7nrNBd5PBJQNDgSc4MHJaFzjWmJpyDEpLtetSXd2pG0xR3cC28LgI7b3wnyyq0X0
	ziCLWBXCHAbftgVuTz5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXsgk-00058t-HK; Mon, 03 Jun 2019 19:32:10 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsgh-00058V-7v
 for linux-um@lists.infradead.org; Mon, 03 Jun 2019 19:32:08 +0000
Received: by mail-pf1-x441.google.com with SMTP id j2so11180712pfe.6
 for <linux-um@lists.infradead.org>; Mon, 03 Jun 2019 12:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:to:cc:references:from:openpgp:autocrypt:subject:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XCKgVLTztonKont0AnsvC14FwkSnUkwJaQmmRPPbOS4=;
 b=dAGRCsy5eI0m2lK1Kt8hvMXI/GCvKu6Yzx4fzHE7XYrhD4QM6sEnqn0mr+DPSBxhwJ
 BcmzcWS6RFqWKzXhTe8g5DoZr96JRYg63po9868gUM13KBdZ2WGWVzM08FMq665ORaWd
 Mp2ed2fvnCjgIcvHTcnkp1h5GJbx35LYP1zWcdc5SsJEH6CHT4GRK6OxQrvZk15+LZK5
 RLf+nCY59MPlwjJkfXM1nDfI80GJPO1UfvAo8vIoxfBIORP0f01jB45u7BeEnczUUc6S
 cHblIXmJBrzc8kp4hAq5SDLyeu7i07sUOGDg20IgBnrI5+3wgvpGb2vlYtQqOqvEBaAa
 IVLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:to:cc:references:from:openpgp:autocrypt
 :subject:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=XCKgVLTztonKont0AnsvC14FwkSnUkwJaQmmRPPbOS4=;
 b=Uy6eVnzGfAISid3E9lDO2EPZxNowr8iQdxxJ91f6LzcDB+Mu+1ekvCuKF2PSSm0GuL
 BG4WcBW8Jzj4rN6QeoV9oCHeOBhnMdbEd8jc9VuZbz42cXPzkI94YcEW1u56KgblDo9h
 ssCu2PDIYX/FNx3BiWY8FB6HSGds9Fax760vYtj3OIl7a3bF+0Gjp52ViJNrx2t1sI5O
 RuLaR6NyeWFJi8MtlVmVlYqDlWbIvFwQ+LNKYPb79s+AY41WamHbGbzT6dDuu9yXjwH4
 HN1UZS9PGkyerOGEXXulhqD7o0exVsRLBSEIA/ACSVORYzR1QmQXevg1g+8ABXseFgsD
 WzFg==
X-Gm-Message-State: APjAAAUK4E8150RthiXWNi0pXtHRXwSwTS4NzHK4ygFosQKluLUEm++r
 hmbuQpI/2Y57yDKONZdOdf8=
X-Google-Smtp-Source: APXvYqwZKTctsUTvRqhsqNFMK32UHh+W1jPKh+BQduIojMYgz+k87llvVSRt6crAHWKLS3WGRxVyfw==
X-Received: by 2002:a62:188d:: with SMTP id 135mr30434503pfy.222.1559590326131; 
 Mon, 03 Jun 2019 12:32:06 -0700 (PDT)
Received: from mail1.cde.priv ([104.220.180.33])
 by smtp.gmail.com with ESMTPSA id u1sm15176706pfh.85.2019.06.03.12.32.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 12:32:05 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail1.cde.priv (Postfix) with ESMTP id 631AD5C0F8;
 Mon,  3 Jun 2019 12:32:03 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at cde.priv
Received: from mail1.cde.priv ([127.0.0.1])
 by localhost (mail1.cde.priv [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EYAx5NR6WI8w; Mon,  3 Jun 2019 12:32:02 -0700 (PDT)
Received: from [192.168.1.3] (unknown [192.168.1.3])
 by mail1.cde.priv (Postfix) with ESMTPS id 562155C05B;
 Mon,  3 Jun 2019 12:32:02 -0700 (PDT)
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>
References: <20190411094944.12245-1-brgl@bgdev.pl>
 <20190411094944.12245-5-brgl@bgdev.pl>
 <CAFLxGvwb8YzNiXCXru8Tw9pxH9qoc7gAO4sk0MXK1Xmp7fm-2g@mail.gmail.com>
 <0e8fbdf3-c40d-e4e8-6235-c744ec7317c3@cambridgegreys.com>
 <684874198.48863.1557299587958.JavaMail.zimbra@nod.at>
 <CAMRc=MdsA7A1DdS1ZJ8NS8xtuCjgc_7WZD1797H3oZ=2w+fOBA@mail.gmail.com>
 <CAMRc=McCxvwHgk-3wYE0e+qxJNoHK0AmpJWjNsOZBmGF2yFT6Q@mail.gmail.com>
 <c5918fa9-ec37-9636-5230-57260f7e8427@cambridgegreys.com>
 <CAMRc=MeOHr0bKJYGgOrhHq4dYFwCnpYvuFAL3jZerwCPvQgC3Q@mail.gmail.com>
 <0aa6028b-7b7b-4123-07a3-786f700f3c14@gmail.com>
 <28917cf9-9192-11a4-7ebd-a21ed2fea71d@cambridgegreys.com>
From: Dana Johnson <djohns042@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=djohns042@gmail.com; prefer-encrypt=mutual; keydata=
 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
 bq6xhfCQInKHA3cqxNE9sW06vSpGpF3X
Subject: Re: [RESEND PATCH 4/4] um: irq: don't set the chip for all irqs
Message-ID: <dade856b-7169-b072-9883-7f6b560eccaf@gmail.com>
Date: Mon, 3 Jun 2019 12:32:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <28917cf9-9192-11a4-7ebd-a21ed2fea71d@cambridgegreys.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_123207_310579_A623C4CF 
X-CRM114-Status: GOOD (  22.92  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (djohns042[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (djohns042[at]gmail.com)
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (djohns042[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: djohns042@gmail.com
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gNi8yLzE5IDExOjU0IFBNLCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4gCj4gCj4gT24gMzEvMDUv
MjAxOSAxMTozMCwgRGFuYSBKb2huc29uIHdyb3RlOgo+PiBPbiA1LzExLzE5IDU6NDggQU0sIEJh
cnRvc3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4+PiBwdC4sIDEwIG1haiAyMDE5IG8gMTg6MjIgQW50
b24gSXZhbm92Cj4+PiA8YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbT4gbmFwaXNhxYIo
YSk6Cj4+Pj4KPj4+Pgo+Pj4+IE9uIDEwLzA1LzIwMTkgMTc6MjAsIEJhcnRvc3ogR29sYXN6ZXdz
a2kgd3JvdGU6Cj4+Pj4+IHB0LiwgMTAgbWFqIDIwMTkgbyAxMToxNiBCYXJ0b3N6IEdvbGFzemV3
c2tpIDxicmdsQGJnZGV2LnBsPiBuYXBpc2HFgihhKToKPj4+Pj4+IMWbci4sIDggbWFqIDIwMTkg
byAwOToxMyBSaWNoYXJkIFdlaW5iZXJnZXIgPHJpY2hhcmRAbm9kLmF0PiBuYXBpc2HFgihhKToK
Pj4+Pj4+PiAtLS0tLSBVcnNwcsO8bmdsaWNoZSBNYWlsIC0tLS0tCj4+Pj4+Pj4+PiBDYW4geW91
IHBsZWFzZSBjaGVjaz8KPj4+Pj4+Pj4+IFRoaXMgcGF0Y2ggaXMgYWxyZWFkeSBxdWV1ZWQgaW4g
LW5leHQuIFNvIHdlIG5lZWQgdG8gZGVjaWRlIHdoZXRoZXIgdG8KPj4+Pj4+Pj4+IHJldmVydCBv
ciBmaXggaXQgbm93Lgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4gSSBhbSBsb29raW5nIGF0IGl0LiBJdCBw
YXNzZWQgdGVzdHMgaW4gbXkgY2FzZSAoSSBkaWQgdGhlIHVzdWFsIHJvdW5kKS4KPj4+Pj4+PiBJ
dCB3b3JrcyBoZXJlIHRvby4gVGhhdCdzIHdoeSBJIG5ldmVyIG5vdGljZWQuCj4+Pj4+Pj4gWWVz
dGVyZGF5IEkgbm90aWNlZCBqdXN0IGJlY2F1c2UgSSBsb29rZWQgZm9yIHNvbWV0aGluZyBlbHNl
IGluIHRoZSBrZXJuZWwgbG9ncy4KPj4+Pj4+Pgo+Pj4+Pj4+IFRoYW5rcywKPj4+Pj4+PiAvL3Jp
Y2hhcmQKPj4+Pj4+IEhpLAo+Pj4+Pj4KPj4+Pj4+IHNvcnJ5IGZvciB0aGUgbGF0ZSByZXBseSAt
IEkganVzdCBjYW1lIGJhY2sgZnJvbSB2YWNhdGlvbi4KPj4+Pj4+Cj4+Pj4+PiBJIHNlZSBpdCBo
ZXJlIHRvbywgSSdsbCBjaGVjayBpZiBJIGNhbiBmaW5kIHRoZSBjdWxwcml0IGFuZCBmaXggaXQg
dG9kYXkuCj4+Pj4+Pgo+Pj4+Pj4gQmFydAo+Pj4+PiBIaSBSaWNoYXJkLCBBbnRvbiwKPj4+Pj4K
Pj4+Pj4gSSdtIG5vdCBzdXJlIHlldCB3aGF0IHRoaXMgaXMgY2F1c2VkIGJ5LiBJdCBkb2Vzbid0
IHNlZW0gdG8gYnJlYWsKPj4+Pj4gYW55dGhpbmcgZm9yIG1lIGJ1dCBzaW5jZSBpdCdzIGEgbmV3
IGVycm9yIG1lc3NhZ2UgSSBndWVzcyBpdCdzIGJlc3QKPj4+Pj4gdG8gcmV2ZXJ0IHRoaXMgcGF0
Y2ggKG90aGVycyBhcmUgZ29vZCkgYW5kIHJldmlzaXQgaXQgZm9yIHY1LjMuCj4+Pj4KPj4+PiBD
YW4geW91IHNlbmQgbWUgeW91ciBjb21tYW5kIGxpbmUgYW5kIC5jb25maWcgc28gSSBjYW4gdHJ5
IHRvIHJlcHJvZHVjZSBpdC4KPj4+Pgo+Pj4KPj4+IFN1cmUsCj4+Pgo+Pj4gdGhlIGNvbW1hbmQg
bGluZSBpczoKPj4+Cj4+PiAuL2xpbnV4IHJvb3Rmc3R5cGU9aG9zdGZzIHJvb3RmbGFncz08cGF0
aCB0byBhIHJlZ3VsYXIgYnVpbGRyb290Cj4+PiByb290ZnM+IHJ3IG1lbT00OE0KPj4+Cj4+PiBU
aGUgY29uZmlnIGlzIHRoZSByZWd1bGFyIHg4Nl82NF9kZWZjb25maWcgZnJvbSBhcmNoL3VtLgo+
Pj4KPj4+IEJhcnQKPj4+Cj4+IMKgIEkgaGl0IHRoaXMgY29tcGlsaW5nIDUuMi4wLXJjMi0wMDAy
NC1nYmVjNzU1MGNjYTEwCj4+Cj4+IEkgY2FuIHRyaWdnZXI6Cj4+Cj4+IFRyeWluZyB0byByZXJl
Z2lzdGVyIElSUSAxMSBGRCA5IFRZUEUgMCBJRCAoX19fX3B0cnZhbF9fX18pCj4+IHdyaXRlX3Np
Z2lvX2lycSA6IHVtX3JlcXVlc3RfaXJxIGZhaWxlZCwgZXJyID0gLTE2Cj4+Cj4+IGR1cmluZyBi
b290IHdoZW46Cj4+Cj4+ICMgQ09ORklHX1VNTF9ORVRfVkVDVE9SIGlzIG5vdCBzZXQKPj4KPj4g
TG9va2luZyBhdCB0aGUgY29kZSB0aGVyZSBzZWVtcyB0byBiZSBhIG9uZSBvZmYgZXJyb3IKPj4g
aW4gdGhlIExBU1RfSVJRIGNhbGN1bGF0aW9uIHdoZW4gQ09ORklHX1VNTF9ORVRfVkVDVE9SIGlz
IGVuYWJsZWQuCj4+IEluIHRoYXQgY2FzZSB0aGUgcGF0Y2ggc2hvdWxkIGJlIHJldmVydGVkIGFu
ZCB0aGUgZm9sbG93aW5nIGFwcGxpZWQ6Cj4+Cj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL3VtL2lu
Y2x1ZGUvYXNtL2lycS5oIGIvYXJjaC91bS9pbmNsdWRlL2FzbS9pcnEuaAo+PiBpbmRleCA0OWVk
M2UzNWIzNWEuLmNlN2E3OGMzYmNmMiAxMDA2NDQKPj4gLS0tIGEvYXJjaC91bS9pbmNsdWRlL2Fz
bS9pcnEuaAo+PiArKysgYi9hcmNoL3VtL2luY2x1ZGUvYXNtL2lycS5oCj4+IEBAIC0yMyw3ICsy
Myw3IEBACj4+IMKgICNkZWZpbmUgVkVDVE9SX0JBU0VfSVJRwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIDE1Cj4+IMKgICNkZWZpbmUgVkVDVE9SX0lSUV9TUEFDRcKgwqDCoMKgwqDCoCA4
Cj4+Cj4+IC0jZGVmaW5lIExBU1RfSVJRIChWRUNUT1JfSVJRX1NQQUNFICsgVkVDVE9SX0JBU0Vf
SVJRKQo+PiArI2RlZmluZSBMQVNUX0lSUSAoVkVDVE9SX0lSUV9TUEFDRSArIFZFQ1RPUl9CQVNF
X0lSUSAtIDEpCj4+Cj4gCj4gVGhhdCBkb2VzIG5vdCB3b3JrLiBWZWN0b3IgSVJRcyBhcmUgYWxs
b2NhdGVkIG1vZHVsbyBWRUNUT1JfSVJRX1NQQUNFLiBMaW5lIDEyMTkgYW5kIDEyMzQgaW4gdmVj
dG9yX2tlcm4uYy4KPiAKPiBpcnFfcnIgPSAoaXJxX3JyICsgMSkgJSBWRUNUT1JfSVJRX1NQQUNF
Owo+IAo+ICNkZWZpbmUgTEFTVF9JUlEgKFZFQ1RPUl9JUlFfU1BBQ0UgKyBWRUNUT1JfQkFTRV9J
UlEgLSAxKSB3aWxsIGRlZmluaXRlbHkgZ2l2ZSBvZmYtYnktb25lIGlmIHZlY3RvciBuZXR3b3Jr
IGRyaXZlcnMgYXJlIGVuYWJsZWQuCj4gCj4gSVJRIDExIGlzIHNpZ2lvLCB0aGlzIGlzIHNvbWV0
aGluZyBlbHNlLgo+IAo+IENhbiBJIGhhdmUgeW91ciAuY29uZmlnIHBsZWFzZSBzbyBJIGNhbiB0
cnkgdG8gcmVwcm9kdWNlIGl0Lgo+IAo+PiDCoCAjZWxzZQo+Pgo+PiBEYW5hCj4+Cj4gCgpZZXMg
ZXhhY3RseSBpcnFfcnIgdGFrZXMgb24gdGhlIHZhbHVlczogMC4uKFZFQ1RPUl9JUlFfU1BBQ0Ug
LSAxKS4KVGhlIG1heGltdW0gdmFsdWUgb2YgaXJxX3JyIGlzIChWRUNUT1JfSVJRX1NQQUNFIC0g
MSkKU28gTEFTVF9JUlEgaXM6CgojZGVmaW5lIExBU1RfSVJRIChWRUNUT1JfQkFTRV9JUlEgKyAo
VkVDVE9SX0lSUV9TUEFDRSAtIDEpKQoKQmVmb3JlIHRoZSBwYXRjaCB3ZSBiZW5pZ25seSBpbml0
aWFsaXplZCBhbiBleHRyYSBpbnRlcnJ1cHQgdXNpbmcKCiNkZWZpbmUgTEFTVF9JUlEgKFZFQ1RP
Ul9JUlFfU1BBQ0UgKyBWRUNUT1JfQkFTRV9JUlEpCgpBZnRlciB0aGUgcGF0Y2ggZXZlcnl0aGlu
ZyBpcyBzdGlsbCBnb29kIGZvciB2ZWN0b3IgYmVjYXVzZSBvZiB0aGUKYmVuaWduIGNsYWltIG9m
IGFuIGV4dHJhIGludGVycnVwdCwgYnV0CgpXaGVuOgoKIyBDT05GSUdfVU1MX05FVF9WRUNUT1Ig
aXMgbm90IHNldAoKY2hhbmdpbmcgaW4ga2VybmVsL2lycS5jIGZyb206CiAgICAgICBmb3IgKGkg
PSAxOyBpIDwgTlJfSVJRUzsgaSsrKQp0bzoKICAgICAgIGZvciAoaSA9IDE7IGkgPCBMQVNUX0lS
UTsgaSsrKQoKV2Ugc3RvcCBvbmUgc2hvcnQgaW4gaW5pdGFsaXppbmcgd2l0aCBsZWFkcyB0byB0
aGUgYnVyYmxlLgoKU28ga2VlcGluZyB0aGUgcGF0Y2ggd2UgbmVlZCB0byB1c2UgJzw9IiBub3Qg
JzwnCgpUaGUgdGVzdCBuZWVkcyB0byBiZToKCiAgICAgICBmb3IgKGkgPSAxOyBpIDw9IExBU1Rf
SVJROyBpKyspCgphbmQgTEFTVF9JUlE6CgojZGVmaW5lIExBU1RfSVJRIChWRUNUT1JfQkFTRV9J
UlEgKyAoVkVDVE9SX0lSUV9TUEFDRSAtIDEpKQoKRGFuYQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVt
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC11bQo=
