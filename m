Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01FD19A79
	for <lists+linux-um@lfdr.de>; Fri, 10 May 2019 11:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rVWtB+lEUoLoHJkQqdtmIoY9jMC7BzrZXhZCIsWd8E=; b=joS5BNLTvU/9Mj
	HTOyVVVdbOzxXjM8qjFYH+iOhtXXrbyK93d4terQHz3sQKebzcM/61Qgj1JKkQTBpxBurpKz/4t0l
	GIvxjAJy5uhDOkNlTjbJX45drSo2a5SyhikfSr6u6dSX5nZ9EyEsKfLASWJq5plWWhzp3MhSfAZyy
	J9U0WmB7aFDzrea46uif7cG+CY4Fo+YiOnz2gzLha4ryZD31JGjUDZ5taoNeaeN8hylUM8wvqLrWr
	i+xAyhh93OZFH7Lg77lRPbLj0GS13EMF3Z2HPh/k0+rbaBqEiXx6NUMc4hjimCV6DinTzY9I85dnC
	IEbNUzZHX1HOAoXekBXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1eM-0007vl-HV; Fri, 10 May 2019 09:17:06 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1eJ-0007vL-Qy
 for linux-um@lists.infradead.org; Fri, 10 May 2019 09:17:05 +0000
Received: by mail-it1-x142.google.com with SMTP id s3so8254011itk.1
 for <linux-um@lists.infradead.org>; Fri, 10 May 2019 02:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=lhVHhThFn1rIUGZz4Q7y5btU3hSDK1sEgnb8gtisfwA=;
 b=XXg5hUW9Bxh/wdsHDo1cJt/Xa74dG229KSnO+XhiiBNTW33pvtb/1NiD9zT0JV+lDT
 lNdWv3o6BLRLWCoXsDhAaT6t1uQt42Ops1u1ClMKKavcF9FrkzXEFWJJzVlLeUUEK6OQ
 3DoaXpEYk+yHYo8w7rSAIXpEt5YAZg7Eu4MvuIQCCz0Nxhl0J6GRFFBIJxnrv+Sw1Ipj
 bzb1pHH9XPClyb7YMwBxlYNsviq5oj2MklSzE1KY9lSFKvFbOBi0g33NOOURGeWIRIKl
 XpuGMOXdrdXtkj7ukD9j9y+TTsXVw6yTUwYR7pMc04PMeztpU2zPetmF/LAJce//aGOe
 ZsFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=lhVHhThFn1rIUGZz4Q7y5btU3hSDK1sEgnb8gtisfwA=;
 b=OVDyNqPGGlcdPemLiUCuqhRW6xPR1RSnSsft2gVDMybJIgZ9bQIa6fR4HLAyimrudo
 Jvp7bVmgbHPpgfZLMYwsbyomssS+SuzNet2FJjoiFMev23xOL/PH1jhCM3F94fPqum1c
 afE0YCvmqVrsosnz8sFVHzLg+tlTFUqGSr+jnk1I0AElcVWw/E4s7sj93H7Ai8xLYelC
 Y5zZ63ExROfxJOfb4Zf5tBfO1uHYRBH4R0Y6IuiolktbNW9dCa+ktCg3dJ44kmZKOiXf
 0T3kNLWwKQ/kqwvlzE0Z+HD/zTjsp8PYNhpqx4iXrlzQEszsQst5LblpJbTOZAjlY5VK
 Bm0Q==
X-Gm-Message-State: APjAAAWx3I1Dh63coNF498TuRm+ox4Wc11j0KmvbGJsG50o262AKjeRd
 iKKZ/YtSTNBYUaTJApqPTQzFUoNiGEDbP37ipAuMRu1OAqw=
X-Google-Smtp-Source: APXvYqwZ10sapMahIUyanhXDaNAcwp19JxoBLrBUGyd4TP058WLPPG3v+q9GWxsQTou0ejq0XxtOl74m+LPCDXAjf8U=
X-Received: by 2002:a24:4d85:: with SMTP id l127mr7286884itb.53.1557479822398; 
 Fri, 10 May 2019 02:17:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190411094944.12245-1-brgl@bgdev.pl>
 <20190411094944.12245-5-brgl@bgdev.pl>
 <CAFLxGvwb8YzNiXCXru8Tw9pxH9qoc7gAO4sk0MXK1Xmp7fm-2g@mail.gmail.com>
 <0e8fbdf3-c40d-e4e8-6235-c744ec7317c3@cambridgegreys.com>
 <684874198.48863.1557299587958.JavaMail.zimbra@nod.at>
In-Reply-To: <684874198.48863.1557299587958.JavaMail.zimbra@nod.at>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 10 May 2019 11:16:51 +0200
Message-ID: <CAMRc=MdsA7A1DdS1ZJ8NS8xtuCjgc_7WZD1797H3oZ=2w+fOBA@mail.gmail.com>
Subject: Re: [RESEND PATCH 4/4] um: irq: don't set the chip for all irqs
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_021704_006230_649CAB0F 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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

xZtyLiwgOCBtYWogMjAxOSBvIDA5OjEzIFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2Qu
YXQ+IG5hcGlzYcWCKGEpOgo+Cj4gLS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+ID4+
IENhbiB5b3UgcGxlYXNlIGNoZWNrPwo+ID4+IFRoaXMgcGF0Y2ggaXMgYWxyZWFkeSBxdWV1ZWQg
aW4gLW5leHQuIFNvIHdlIG5lZWQgdG8gZGVjaWRlIHdoZXRoZXIgdG8KPiA+PiByZXZlcnQgb3Ig
Zml4IGl0IG5vdy4KPiA+Pgo+ID4gSSBhbSBsb29raW5nIGF0IGl0LiBJdCBwYXNzZWQgdGVzdHMg
aW4gbXkgY2FzZSAoSSBkaWQgdGhlIHVzdWFsIHJvdW5kKS4KPgo+IEl0IHdvcmtzIGhlcmUgdG9v
LiBUaGF0J3Mgd2h5IEkgbmV2ZXIgbm90aWNlZC4KPiBZZXN0ZXJkYXkgSSBub3RpY2VkIGp1c3Qg
YmVjYXVzZSBJIGxvb2tlZCBmb3Igc29tZXRoaW5nIGVsc2UgaW4gdGhlIGtlcm5lbCBsb2dzLgo+
Cj4gVGhhbmtzLAo+IC8vcmljaGFyZAoKSGksCgpzb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHkgLSBJ
IGp1c3QgY2FtZSBiYWNrIGZyb20gdmFjYXRpb24uCgpJIHNlZSBpdCBoZXJlIHRvbywgSSdsbCBj
aGVjayBpZiBJIGNhbiBmaW5kIHRoZSBjdWxwcml0IGFuZCBmaXggaXQgdG9kYXkuCgpCYXJ0Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBt
YWlsaW5nIGxpc3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
