Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90915D1E5
	for <lists+linux-um@lfdr.de>; Tue,  2 Jul 2019 16:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWOM5Ci+c1Vf5GY5ImtLhi6mqXRDtXNXJM7xKjCBwjA=; b=f05+a69yWnxCx6
	HHJQfIqyDkbj9QP5Pcoz4N0mrRU9Paj1K371Y/gnvj4YWtScsSQtBBWrOChYNNp9j+fXN2F486N77
	4lACbifLhAtl/Hp4VV12DvZSmGBhMZWZ9uAhYcBzpa6qgXLA4DlLVCri0XsKNcr0XizGVW2ogYTc5
	jXjdx4ad9QWBh1+d7zv+uHVVIph/Ubvxnpuh9ohaJQxfwlREm7yEBD/rtV0s4kAANxpvk5Y0TGqdZ
	XaW95m2pszM9u0VPFopMsCoXZxKGZ8hJkO4MFS4X5FtL/oW2CO1DciQV2ad4nOLwSMLP4ranXr4a5
	3uQywz1nKWDxqdRKIzcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiJxG-0000gL-Fe; Tue, 02 Jul 2019 14:40:22 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiJxB-0000fi-TX
 for linux-um@lists.infradead.org; Tue, 02 Jul 2019 14:40:19 +0000
Received: by mail-wm1-x342.google.com with SMTP id f17so1323281wme.2
 for <linux-um@lists.infradead.org>; Tue, 02 Jul 2019 07:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tTmjtWmWf6ZvGqYByeM0PAx1Zh0B/h0VLok6y8JFxKo=;
 b=a30Sb2J/457IynmLDyZPJms4qf14q0PyLiU/z8Glv3g2iB72yL7nDusskvXdF81q3k
 r3OWjTSWFOC15CEywhzL5pY4ysjnI/mgdoT/kGh/hTFFI5vdFQAIQP6aNJQQjWacD/zw
 euIUYnxmpkoLLiK8U3UfPMlMgrdNmP8KKXro0XK/c8wX/49sdVzPjkQkrbqN7JOdVrg1
 iD63o/xOhc9I0V/jvgpi9rJ7euFyEN82buXmobY3vpLJ5lg+luNBEr03tM+WJbhyYgyP
 WQXkLrw23kkHQqy3gmXGSWW3Qpt/nNFaJRYM/3l5H3Dc1QBIIRS+20qeoRAqLDrwsmtb
 gb7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tTmjtWmWf6ZvGqYByeM0PAx1Zh0B/h0VLok6y8JFxKo=;
 b=Ue22U1wozoJrgZLT8mGtZlUNKBPSOsx7PaJnJZylqOBb6D5/Q3BxoU5y1atc2BrmGg
 KMRxWhCw/LrkrbNFwyoj9CBI419fGxCk71XCJAPsMjRdWgTdw37JHKzNC5DUPRLCIzH2
 VbM1JarqxNoPgFs8BslwqJKNJjWjE4tOjTpii2Jqh0o/qpVhhtfG+B5K6FIwRlsZwFjT
 wHMDSTXa7YC2iWUcHrKEp/e+A8DSjZ49kkloeFntzmbUxASmpaHY7DXlgNQMCPpeATf2
 AwLWaLeBEALzqzyQKSHGtyg4p7TEGnmWxXklC3zM7yO69fYBRRxr4VSf/akX4bxklGIU
 8cBg==
X-Gm-Message-State: APjAAAX8zDZscsiYLkDA7999c18wUYdUz/lBU3OQDX2MZJWDS1jXYbgg
 3t8rSJZYwjY4b4V2YqKoEK4oZE9BiEr1jraa9d4=
X-Google-Smtp-Source: APXvYqztise+8XJdpsu/8AJaoAsgwG0QyM0Qr630Y9vulFEOxxuIcTCA/unfEunjR6/r5ZRJIUjKEB7ANireHmdbTrU=
X-Received: by 2002:a05:600c:2182:: with SMTP id
 e2mr3687092wme.104.1562078415791; 
 Tue, 02 Jul 2019 07:40:15 -0700 (PDT)
MIME-Version: 1.0
References: <54cee375-f1c3-a2b3-ea89-919b0af60433@yandex.ru>
 <fc526c78-2d3f-90ca-8317-a89eb653cbf9@yandex.ru>
In-Reply-To: <fc526c78-2d3f-90ca-8317-a89eb653cbf9@yandex.ru>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 2 Jul 2019 16:40:03 +0200
Message-ID: <CAFLxGvytDC1TFdT0m9vvijz_93B8TziWURcR-3mskWB-7TzFag@mail.gmail.com>
Subject: Re: [PATCH] User mode linux bump maximum MTU tuntap interface [RESAND]
To: =?UTF-8?B?0JDQu9C10LrRgdC10Lk=?= <ne-vlezay80@yandex.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_074017_958440_8A455C99 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, linux-um@lists.infradead.org,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Q0MnaW5nIHVtIGZvbGtzLgoKT24gVHVlLCBKdWwgMiwgMjAxOSBhdCAzOjAxIFBNINCQ0LvQtdC6
0YHQtdC5IDxuZS12bGV6YXk4MEB5YW5kZXgucnU+IHdyb3RlOgo+Cj4gSGVsbG8sIHRoZSBwYXJh
bWV0ZXIgIEVUSF9NQVhfUEFDS0VUIGxpbWl0ZWQgdG8gMTUwMCBieXRlcyBpcyB0aGUgbm90Cj4g
c3VwcG9ydCBqdW1ibyBmcmFtZXMuCj4KPiBUaGlzIHBhdGNoIGNoYW5nZSBFVEhfTUFYX1BBQ0tF
VCB0aGUgNjU1MzUgYnl0ZXMgdG8ganVtYm8gZnJhbWUgc3VwcG9ydAo+IHdpdGggdXNlciBtb2Rl
IGxpbnV4IHR1bnRhcCBkcml2ZXIuCj4KPgo+IFBBVENIOgo+Cj4gLS0tLS0tLS0tLS0tLS0tLS0t
LQo+Cj4KPiBkaWZmIC1ydU5QIC4uL2xpbnV4X29yaWcvbGludXgtNS4xL2FyY2gvdW0vaW5jbHVk
ZS9zaGFyZWQvbmV0X3VzZXIuaAo+IC4vYXJjaC91bS9pbmNsdWRlL3NoYXJlZC9uZXRfdXNlci5o
Cj4gLS0tIGEvYXJjaC91bS9pbmNsdWRlL3NoYXJlZC9uZXRfdXNlci5oICAgIDIwMTktMDUtMDYg
MDA6NDI6NTguMDAwMDAwMDAwCj4gKzAwMDAKPiArKysgYi9hcmNoL3VtL2luY2x1ZGUvc2hhcmVk
L25ldF91c2VyLmggICAgMjAxOS0wNy0wMiAwNzoxNDoxMy41OTMzMzMzNTYKPiArMDAwMAo+IEBA
IC05LDcgKzksNyBAQAo+ICAjZGVmaW5lIEVUSF9BRERSX0xFTiAoNikKPiAgI2RlZmluZSBFVEhf
SEVBREVSX0VUSEVSVEFQICgxNikKPiAgI2RlZmluZSBFVEhfSEVBREVSX09USEVSICgyNikgLyog
MTQgZm9yIGV0aGVybmV0ICsgVkxBTiArIE1QTFMgZm9yCj4gY3JhenkgcGVvcGxlICovCj4gLSNk
ZWZpbmUgRVRIX01BWF9QQUNLRVQgKDE1MDApCj4gKyNkZWZpbmUgRVRIX01BWF9QQUNLRVQgKDY1
NTM1KQo+Cj4gICNkZWZpbmUgVU1MX05FVF9WRVJTSU9OICg0KQo+Cj4gLS0tLS0tLS0tLS0tLS0t
LS0tLQo+Cj4KCgotLSAKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtdW0K
