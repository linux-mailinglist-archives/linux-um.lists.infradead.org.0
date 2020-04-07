Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD951A15F4
	for <lists+linux-um@lfdr.de>; Tue,  7 Apr 2020 21:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSXdlUQIw5sCd2nm/kOHJ4PJjMe65PBkZbQ9XgvcAlY=; b=EYzHkar/IhXtLG
	7aPQ6bdLPzW++RJMvgAOUjOxKn4e3pEwZub6RDatq5lf8lmvq/OkY5sm2e0dr1BmDKixCtTvQ1jYP
	9quJTNVQEPcQJqvHiglK0k+gZGnKMUFqz0VZhqemfcosuQ/EELXKYZG3DxZ+MNj5qPJiPe8a1SwS3
	9+AxIykcc2ri7TUjVCrpa3O2mqm/wxJri4B37bks6FresGFdVEmR5gsInivPVWBN9wnP/1QijU30g
	jorVKeTfYQJlvRwTbE0EfU3rGcphdqujIuI/de9SMoAri6iJ6Qw7xbi6VydP5nJKnjEY5axcQhn/y
	KGwqc6+HC5S/WGBzNP5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLtqz-00084n-UH; Tue, 07 Apr 2020 19:25:45 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLtqw-000840-OD
 for linux-um@lists.infradead.org; Tue, 07 Apr 2020 19:25:44 +0000
Received: by mail-lj1-x232.google.com with SMTP id t17so4998849ljc.12
 for <linux-um@lists.infradead.org>; Tue, 07 Apr 2020 12:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cTvV83D9tyi0R+IQtypCgkVC9GEIyiZWJmJET7kjhGw=;
 b=HAlLzotb9PU34aLkQ1YZV2sHVnDWRiDqERuQNFq1Lgpueu8nNAMhW2f3TEg5ZiceVe
 esVXN+LhFhJoA+x8yyZi25C9SQrqSJgx4lISXRug/CODk3ch8AANRIfqsT5D/msE8vkC
 D2fuP8LLh2OgAyRsBpkAInIMOtk8ylp8kWfujJrZqvkfe2Cyb3qY4L4Bmqt0kYYnMrH2
 C7t6yD6IFiGSr8W+pq7Ipzr3zoqfs3d+dXGyKMq2HtSqW6+HN0bAgcR4907fKfn3bXXK
 nZZGWnQZfCs1NiUF3C4UY+mxSR84ZLCe2jS6JQPp6ufo9JQGvuFsgpd0atZ3LhcXau8i
 bmqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cTvV83D9tyi0R+IQtypCgkVC9GEIyiZWJmJET7kjhGw=;
 b=um3xiAOdeGU25uGWLjxtKfQ7bMJaxai6hrXWpubvgKBR80xxmvuK4tgxOU9AU2/U4t
 x2JJU8B5UHwTeNU1j0DN11AO3sG4rIUiYjAcW4OlCEi4i6oOOG2kzYQ+/9v4omMdW0jv
 oHFuBm7RLJbA/Gl4YryPT/XAIr/HPW6Zz+1bictBQx40IGihBZsUL/HCTXgnquGgrMHL
 RtOu34RUoX0gwx8fFVYNoZx5KlFaTkKSXzdJhTQ7nAI2+v9xWMaPTyzpASGRJoxj6bIL
 q4ABhBHzhAfz6R8emr/7/1iGMnUhXmYsF+hYxfZ+YqrjE9iklww2vdVkwhOwi5NT4E50
 XVQw==
X-Gm-Message-State: AGi0PubBp1z8yJOow6xTy0WudJP86WTEWc9itLUInmzFQAflv9aUnS1H
 /v1WhpVBQxEGoqSl2ZjrR/ZaQqjF/6PY6ZQp1dg=
X-Google-Smtp-Source: APiQypJd52M9JP6lflf4jxKcg8K0qiC7e7im/va0coeD1jvOIT2UPF3K1VUelMFxAWQKwNWPJvEFYaiiJjkEopZC/Pw=
X-Received: by 2002:a2e:a586:: with SMTP id m6mr2463483ljp.32.1586287538708;
 Tue, 07 Apr 2020 12:25:38 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1585579244.git.thehajime@gmail.com>
 <dca6ea7260830a03c060f57e6ab9961f16ad55ed.1585579244.git.thehajime@gmail.com>
 <a84f3d7bcddbaa6125349c4bcdec6e3e07d6b783.camel@sipsolutions.net>
 <CAFLxGvyFqXZSmMcD_=o81AHLzdM_u2iH8h412w7VZrxON7Ohig@mail.gmail.com>
 <m21rp9xaqt.wl-thehajime@gmail.com>
 <ba2199bd17b6457c97305f6688b13ed36e7feac3.camel@sipsolutions.net>
 <m2tv22wfmr.wl-thehajime@gmail.com>
In-Reply-To: <m2tv22wfmr.wl-thehajime@gmail.com>
From: Octavian Purdila <tavi.purdila@gmail.com>
Date: Tue, 7 Apr 2020 22:25:27 +0300
Message-ID: <CAMoF9u11mUvOO6NZoEq9Hu=ndOz_2he3Mjb2dEpCEAT6fk_CjQ@mail.gmail.com>
Subject: Re: [RFC v4 02/25] um lkl: architecture skeleton for Linux kernel
 library
To: Hajime Tazaki <thehajime@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_122542_788466_F29FE5B6 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:232 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tavi.purdila[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Levente Kurusa <levex@linux.com>,
 Matthieu Coudron <mattator@gmail.com>, cem <cem@freebsd.org>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 linux-um <linux-um@lists.infradead.org>, Jens Staal <staal1978@gmail.com>,
 Motomu Utsumi <motomuman@gmail.com>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Akira Moroo <retrage01@gmail.com>, Petros Angelatos <petrosagg@gmail.com>,
 "Edison M . Castro" <edisonmcastro@hotmail.com>,
 Pierre-Hugues Husson <phh@phh.me>, Mark Stillwell <mark@stillwell.me>,
 linux-kernel-library <linux-kernel-library@freelists.org>,
 pscollins <pscollins@google.com>, Johannes Berg <johannes@sipsolutions.net>,
 sigmaepsilon92 <sigmaepsilon92@gmail.com>, Luca Dariz <luca.dariz@gmail.com>,
 Yuan Liu <liuyuan@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

PHNuaXA+CgoKPiA+IEFuZCBsaWtlIEkgc2FpZCBiZWZvcmUsIHRoYXQgZGVjaXNpb24gd2lsbCBm
cmFtZSBldmVyeXRoaW5nIGVsc2UuIEkKPiA+IHJlYWxseSBkb24ndCB0aGluayB3ZSBjYW4gbWFr
ZSBzaWduaWZpY2FudCBwcm9ncmVzcyBoZXJlIHdpdGhvdXQgaGF2aW5nCj4gPiBkZWNpZGVkIHdo
ZXRoZXIgdGhpcyBpcyBwb3NzaWJsZS4KPiA+Cj4gPiBQZXJoYXBzIFVNTCAqY2FuKiBiZWNvbWUg
YSAic3BlY2lhbCBjYXNlIiBvZiBMS0wsIHdpdGggYSBzcGVjaWFsIEFQSQo+ID4gZnVuY3Rpb24g
KHRoYXQncyBub3QgcGFydCBvZiB0aGUgc3lzY2FsbCBzdXJmYWNlKSB0byAiYm9vdChjbWRsaW5l
KSIgb3IKPiA+IHNvbWV0aGluZy4gQnV0IGlmIGl0IGNhbid0LCBhbmQgaGFzIHRvIHJlbWFpbiBh
cyBzZXBhcmF0ZWQgYXMgdGhlIHR3bwo+ID4gYXJlIHRvZGF5LCBJIHdvdWxkIGFyZ3VlIHdlJ3Jl
IGJldHRlciBvZmYganVzdCBub3QgY2FsbGluZyB0aGVtIHRoZSBzYW1lCj4gPiBhcmNoaXRlY3R1
cmUuCj4KPiBJIGFncmVlIHdpdGggdGhpcyBpZiB0aGUgdW5pZmljYXRpb24gaGFzIGFsbCBjb21w
bGV0ZWQuCj4KCkkgdG91Z2h0IGEgbG90IGFib3V0IHRoaXMgYW5kIEkgYWdyZWUgd2l0aCBKb2hh
bm5lcyB0aGF0IGlmIHdlIHdhbnQgdG8KdW5pdHkgVU1MIGFuZCBMS0wgd2Ugc2hvdWxkIHN0YXJ0
IHdpdGggdGhlIGhhcmQgcGFydHMuCgpJIGFtIGFsc28gc3RhcnRpbmcgdG8gdGhpbmsgdGhhdCBp
dCBpcyB1bmxpa2VseSB0byBiZSBhYmxlIHRvIG1lcmdlIHRoZQp0d28gIm5pY2VseSIgYW5kIHRo
YXQgd2Ugc2hvdWxkIHByb2JhYmx5IHR1cm4gdGhpcyBvbiBpdHMgaGVhZCBhbmQgc3RhcnQKd2l0
aCByZXdvcmtpbmcgVU1MIHRvd2FyZHMgdGhlIExLTCBmZWF0dXJlcy4gV2Ugd2lsbCBlbmQgdXAK
cmUtaW1wbGVtZW50aW5nICpzb21lKiBvZiB0aGUgTEtMIGNvbmNlcHRzIGZyb20gc2NyYXRjaCBp
biBVTUwgYnV0IEkKdGhpbmsgYXQgdGhpcyBwb2ludCB0aGlzIGlzIHVuYXZvaWRhYmxlLgoKSGVy
ZSBhcmUgbXkgdGhvdWdodHMgb24gYSB2ZXJ5IHJvdWdoIHBsYW4gZm9yIGRvaW5nIHRoYXQ6CgpN
aWxlc3RvbmUgMTogTEtMIGxpYiBvbiB0b3Agb2YgVU1MCiAqIEtlcm5lbCAtIEhvc3QgYnVpbGQg
c3BsaXQKICAgQnVpbGQgVU1MIGFzIGEgcmVsb2NhdGFibGUgb2JqZWN0IHVzaW5nIHRoZSBVTUzi
gJlzIGtlcm5lbCBsaW5rZXIKICAgc2NyaXB0LgogICBNb3ZlIHRoZSBwdHJhY2UgYW5kIG90aGVy
IHdlbGwgaXNvbGF0ZWQgb3MgY29kZSBvdXQgb2YgYXJjaC91bSB0bwogICB0b29scy91bSAob3Ig
bWF5YmUgc3RhcnQgZGlyZWN0bHkgd2l0aCB0b29scy9sa2w/KQogICBVc2Ugc3RhbmRhcmQgaG9z
dCB0b29sY2hhaW4gdG8gY3JlYXRlIGEgc3RhdGljIGxpYnJhcnkgc3RyaXBwZWQgb2YKICAgdGhl
IHB0cmFjZSBjb2RlLiBVc2Ugc3RhbmRhcmQgaG9zdCB0b29sY2hhaW4gdG8gYnVpbGQgdGhlIG1h
aW4gVU1MCiAgIGV4ZWN1dGFibGUuCiAgIEFkZCBsaWJyYXJ5IGluaXQgQVBJIHRoYXQgY3JlYXRl
cyB0aGUgVU1MIGtlcm5lbCBwcm9jZXNzIGFuZCBzdGFydHMKICAgVU1MLgoqIFN5c3RlbSBjYWxs
cyBBUElzCiAgIEFkZCBuZXcgc3lzdGVtIGNhbGwgaW50ZXJmYWNlIGRiYXNlZCBvbiBmZCBpcnEu
CiAgIFVzZSB0aGUgTEtMIHNjcmlwdHMgdG8gZXhwb3J0IHRoZSByZXF1aXJlZCBoZWFkZXJzIHRv
IGNyZWF0ZSBzeXN0ZW0KICAgY2FsbHMgQVBJcyB0aGF0IHVzZSB0aGUgVU1MIHN5c3RlbSBjYWxs
cyBpbmZyYXN0cnVjdHVyZS4KICAgS2VlcCB0aGUgdW5kZXJseWluZyBob3N0IGFuZCBkcml2ZXIg
b3BlcmF0aW9ucyAodGhyZWFkcywgaXJxcywgZXRjLikKICAgYXMgdGhleSBhcmUgbm93IGluIFVN
TC4KICogQm9vdCB0ZXN0CiAgIFBvcnQgdGhlIExLTCBib290IHRlc3QgdG8gdmVyaWZ5IHRoYXQg
d2UgYXJlIGFibGUgdG8gcHJvZ3JhbWF0aWNhbGx5CiAgIGlzc3VlIHN5c3RlbSBjYWxscy4KCk1p
bGVzdG9uZSAyOiBhZGQgdmlydGlvIGRpc2sgc3VwcG9ydAogKiBFeHBvcnQgYXNtL2lvLmggb3Bl
cmF0aW9ucyB0byBob3N0L29zLiBDcmVhdGUgSU8gYWNjZXNzIG9wZXJhdGlvbnMKICAgYW5kIHJl
ZGlyZWN0IHRoZW0gdG8gd2VhayBvc18gdmFyaWFudHMgdGhhdCB1c2UgdGhlIGN1cnJlbnQgVU1M
CiAgIGltcGxlbWVudGF0aW9uLgogKiBBZGQgdGhlIExLTCBJTyBhY2Nlc3MgbGF5ZXIgaW5jbHVk
aW5nIGdlbmVyaWMgdmlydGlvIGhhbmRsaW5nIGFuZCB0aGUKICAgdmlydGlvIGJsb2NrIGRldmlj
ZSBjb2RlLgogKiBQb3J0IExLTCBkaXNrIHRlc3QgYW5kIGRpc2sgYXBwcyAobGtsZnVzZSwgZnMy
dGFyLCBjcHRvZnMpCgpNaWxlc3RvbmUgMzogbmV3IGFyY2ggcG9ydHMKICAqIEFic3RyYWMgdGhl
IHN5c3RlbSBjYWxsIC8gSVJRIG1vZGUgdGhlIG1vdmUgdGhlIGltcGxlbWVudGF0aW9uIHRvIGhv
c3QKICAqIEFic3RyYWN0IHRoZSB0aHJlYWQgbW9kZWwgYW5kIG1vdmUgdGhlIGltcGxlbWVudGF0
aW9uIHRvIGhvc3QKICAqIEFkZCBMS0wgdGhyZWFkIG1vZGVsIGFuZCBMS0wgcG9ydHMKClRoYW5r
cywKVGF2aQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
