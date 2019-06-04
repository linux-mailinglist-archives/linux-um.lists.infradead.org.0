Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F2E35263
	for <lists+linux-um@lfdr.de>; Tue,  4 Jun 2019 23:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Gpo0IRS2QUM3HcfOY08WylVBOpeZHSg3D+S8UgiAA8=; b=nzUGeEoS73vvUq
	oPLO8SVOa8fBl0o94/WVAmh2ulfPBAaOyMcmQUeXo9BtiuuHk9/4wxMIij1aNyhRQeQyKSwjuZUe+
	SI25JqqPD7RDy6/ThyrGU5CV1w0TT+o4VCvFsxj41G5VRfTIiWaCVw6n8lVvwnkkKkv5b1nQbkihe
	in7f2vjnHJRueJvtSVaUu3PxBypTLHAnhYnrGErBQVBCbHfZGnBEHloYsEkVR9Xq8/VYBmkFJnCCM
	Vh3yaaZiw66Ms62deRcI6KcQfBUS2UEpX0RZRl905mESrvgpOISIjQ5X1/yV9tO13qjM2f1o+3b4L
	2GN23GhhnjVynsrp2CVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYHQi-0000U3-3s; Tue, 04 Jun 2019 21:57:16 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYHQf-0000Tb-D5
 for linux-um@lists.infradead.org; Tue, 04 Jun 2019 21:57:14 +0000
Received: by mail-lj1-x241.google.com with SMTP id 131so8668315ljf.4
 for <linux-um@lists.infradead.org>; Tue, 04 Jun 2019 14:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nm6nxsfvdF1NlydS0vPcNG8Czdz9QMNoM/DaRUKeru8=;
 b=nLRStuQzBAP59j/hKQNMV8C2AGPtk1eCG2pVy9YzYyeSjd5qJhpZEFP4EeezoVeUTW
 jCVxFCEslDbIYQBvl1fiWZwQgMWKrBfYmhsQbY0FOyfRCagOJrBrYjrjVYnfRKEkWBk3
 6ocN8V2mwExKGi+I0etI2k6Ni8hGVyzZ0e9VpFO0N23q3SvM0zXQkqkIxHDnQrOWEsbB
 6dEDi7PBY/pmmPrtXyvpaYGxcVTNutTpomS6BWz/12hpgG8D/gC5FYBWpRRzRM5m5zt8
 WdpVD7qsXc2+NJj9mv+e1rum3ydGcI/lFQo5HIg7f8lqXChuKP/uhCGMxzROQ+8FUS+v
 VZnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nm6nxsfvdF1NlydS0vPcNG8Czdz9QMNoM/DaRUKeru8=;
 b=ZgIWDmHpXYau7BtRjDFeXkofPgGRFeafOyqRz4/yml2CxzeUuH6T+1pJTWkUbe8aDl
 7GBQQQkQDDUoXSoQNZAMseY7QyLYpf2iJAftaJbgqGe0WeQl+HgumObW2kT8IglghdBS
 rQjt9uyk34d6t1+q009euNAtpwL14aatgS52ypHinqMmsbz7luRwl/rK1c8TD1ZLwjWn
 kgC3odjYxFaZAFRzl3jsYjzgL2yGDL0QpQArLBtHYyXGUC+gXZzMR7ZzmYDEKMhl321v
 3bIJN+j7y5OkGcKZTR6d+2I6BhsHI5v8jYeiMCHgJIkxjInjuY5bgPYakYQaQdZrzNfB
 sRGQ==
X-Gm-Message-State: APjAAAWWhv3BimcGWE1lQrz6tMg+PTT9NBuKOrqZ6eCGyb66uZtOJ584
 T4Fal0Dpk3Dvk/X3x2k42ZX8772VRRm5vdTF71nzJA==
X-Google-Smtp-Source: APXvYqwE1CV5WfOBv8U7SSbJEQLGVSNIIKxmFZ1p4N1xuuO/XMklmNvMFn5XfSsxTekMg8/K0WDmZz2xlx1whsztp4E=
X-Received: by 2002:a2e:a318:: with SMTP id l24mr6354112lje.36.1559685428378; 
 Tue, 04 Jun 2019 14:57:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190514054251.186196-1-brendanhiggins@google.com>
 <20190514054251.186196-16-brendanhiggins@google.com>
 <20190514073422.4287267c@lwn.net>
 <20190514180810.GA109557@google.com> <20190514121623.0314bf07@lwn.net>
 <20190514231902.GA12893@google.com> <20190515074546.07700142@lwn.net>
In-Reply-To: <20190515074546.07700142@lwn.net>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 4 Jun 2019 14:56:57 -0700
Message-ID: <CAFd5g44XatHJnNvRdqBGLnwcvOxTUAKM-tjKH94NGbyXGVVatQ@mail.gmail.com>
Subject: Re: [PATCH v3 15/18] Documentation: kunit: add documentation for KUnit
To: Jonathan Corbet <corbet@lwn.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_145713_468352_2AA40DB3 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: songliubraving@fb.com, Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, catalin.marinas@arm.com,
 Amir Goldstein <amir73il@gmail.com>, ast@kernel.org,
 dri-devel <dri-devel@lists.freedesktop.org>, oberpar@linux.ibm.com,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, netdev@vger.kernel.org,
 glider@google.com, Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 kgdb-bugreport@lists.sourceforge.net, shuah <shuah@kernel.org>,
 cocci@systeme.lip6.fr, Rob Herring <robh@kernel.org>,
 daniel.thompson@linaro.org, daniel@iogearbox.net,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Gilles.Muller@lip6.fr,
 Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, kasan-dev@googlegroups.com,
 Felix Guo <felixguoxiuping@gmail.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 aryabinin@virtuozzo.com, Jeff Dike <jdike@addtoit.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, nicolas.palix@imag.fr, "Bird,
 Timothy" <Tim.Bird@sony.com>, jason.wessel@windriver.com,
 linux-um@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 Julia Lawall <julia.lawall@lip6.fr>, yhs@fb.com,
 Dan Williams <dan.j.williams@intel.com>, Dmitry Vyukov <dvyukov@google.com>,
 kunit-dev@googlegroups.com, michal.lkml@markovi.net,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 bpf@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, kafai@fb.com,
 Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

U29ycnksIHRvIGVtYWlsIHNvIG1hbnkgcGVvcGxlLCBidXQgdGhlcmUgYXJlIGEgbG90IG9mIG1h
aW50YWluZXJzIGluCnRoaXMgZGlyZWN0b3J5LgoKT24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgNjo0
NSBBTSBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PiB3cm90ZToKPgo+IE9uIFR1ZSwg
MTQgTWF5IDIwMTkgMTY6MTk6MDIgLTA3MDAKPiBCcmVuZGFuIEhpZ2dpbnMgPGJyZW5kYW5oaWdn
aW5zQGdvb2dsZS5jb20+IHdyb3RlOgo+Cj4gPiBIbW1tLi4ucHJvYmFibHkgcHJlbWF0dXJlIHRv
IGJyaW5nIHRoaXMgdXAsIGJ1dCBEb2N1bWVudGF0aW9uL2Rldi10b29scy8KPiA+IGlzIGtpbmQg
b2YgdGhyb3duIHRvZ2V0aGVyLgo+Cj4gV2FpdCBhIG1pbnV0ZSwgbWFuLi4uICpJKiBjcmVhdGVk
IHRoYXQgZGlyZWN0b3J5LCBhcmUgeW91IGltcHVnbmluZyBteQo+IHdvcms/IDopCgpXaGF0PyEg
SSB3b3VsZCBuZXZlciEgOy0pCgpDb250ZXh0IGZvciB0aGUgcGVvcGxlIEkganVzdCBhZGRlZDog
SSBwcm9wb3NlZCBkb2N1bWVudGF0aW9uIGZvciBhCm5ldyBkZXZlbG9wbWVudCB0b29sLiBKb24g
dmVyeSByZWFzb25hYmx5IHN1Z2dlc3RlZCBpdCBzaG91bGQgZ28gaW4KRG9jdW1lbnRhdGlvbi9k
ZXYtdG9vbHMvLCB3aGljaCBpcyBub3QgdmVyeSB3ZWxsIG9yZ2FuaXplZC4gVGhpcyBpbgp0dXJu
IHByb21wdGVkIGEgZGlzY3Vzc2lvbiBhYm91dCBjbGVhbmluZyBpdCB1cC4KCj4gQnV0IHllcywg
ImtpbmQgb2YgdGhyb3duIHRvZ2V0aGVyIiBpcyBhIGdvb2QgZGVzY3JpcHRpb24gb2YgbXVjaCBv
Zgo+IERvY3VtZW50YXRpb24vLiAgQSBudW1iZXIgb2YgcGVvcGxlIGhhdmUgYmVlbiB3b3JraW5n
IGZvciB5ZWFycyB0byBtYWtlCj4gdGhhdCBiZXR0ZXIsIHdpdGggc29tZSBzdWNjZXNzLCBidXQg
dGhlcmUgaXMgYSBsb25nIHdheSB0byBnbyB5ZXQuICBUaGUKPiBkZXYtdG9vbHMgZGlyZWN0b3J5
IGlzIGFuIGltcHJvdmVtZW50IG92ZXIgaGF2aW5nIHRoYXQgc3R1ZmYgc2NhdHRlcmVkIGFsbAo+
IG92ZXIgdGhlIHBsYWNlIOKAlCBhdCBsZWFzdCBpdCdzIGFjdHVhbGx5IHRocm93biB0b2dldGhl
ciDigJQgYnV0IGl0J3Mgbm90IHRoZQo+IGVuZCBwb2ludC4KPgo+ID4gSXQgd291bGQgYmUgbmlj
ZSB0byBwcm92aWRlIGEgY29oZXJlbnQgb3ZlcnZpZXcsIG1heWJlIHByb3ZpZGUgc29tZQo+ID4g
YmFzaWMgZ3JvdXBpbmcgYXMgd2VsbC4KPiA+Cj4gPiBJdCB3b3VsZCBiZSBuaWNlIGlmIHRoZXJl
IHdhcyBraW5kIG9mIGEgZ2VudGxlIGludHJvZHVjdGlvbiB0byB0aGUKPiA+IHRvb2xzLCB3aGlj
aCBvbmVzIHlvdSBzaG91bGQgYmUgbG9va2luZyBhdCwgd2hlbiwgd2h5LCBldGMuCj4KPiBUb3Rh
bCBhZ3JlZW1lbnQuICBBbGwgd2UgbmVlZCBpcyBzb21lYm9keSB0byB3cml0ZSBpdCEgIDopCgpJ
IHdvdWxkbid0IG1pbmQgdGFraW5nIGEgc3RhYiBhdCBpdCBpbiBhIGxhdGVyIHBhdGNoc2V0LgoK
TXkgaW5pdGlhbCBpZGVhOiB0aGVyZSBpcyBhIGJ1bmNoIG1vcmUgc3R1ZmYgdGhhdCBuZWVkcyB0
byBiZSBhZGRlZApoZXJlLCBzbyBwcm9iYWJseSBkb24ndCB3YW50IHRvIGRvIGl0IGFsbCBhdCBv
bmNlLgoKSSBhbSB0aGlua2luZyB0aGUgZmlyc3Qgc3RlcCBpcyBqdXN0IHRvIGNhdGVnb3JpemUg
dGhpbmdzIGluIGEKc2Vuc2libGUgbWFubmVyIHNvIHNvbWVib2R5IGRvZXNuJ3QgbG9vayBhdCB0
aGUgaW5kZXggYW5kIHNlZSAqYWxsIHRoZQp0b29scyogaW1tZWRpYXRlbHkgY2F1c2luZyB0aGVp
ciBleWVzIHRvIGdsYXplIG92ZXIuIEZyb20gZmlyc3QKZ2xhbmNlcyBpdCBsb29rcyBsaWtlIHRo
ZSB1c2VycyBvZiB0aGVzZSB0b29scyBpcyBnb2luZyB0byBiZSBzb21ld2hhdApkaXNqb2ludC4K
Ck1heWJlIGJyZWFrIHRoaW5ncyBhcGFydCBieSB3aG8gYW5kIGhvdyBzb21lb25lIHdvdWxkIHVz
ZSB0aGUgdG9vbC4gRm9yIGV4YW1wbGUsCgpJdCBsb29rcyBsaWtlIENvY2NpbmVsbGUgaXMgZ29p
bmcgdG8gYmUgdXNlZCBwcmltYXJpbHkgYnkgcGVvcGxlIGRvaW5nCmNvZGUgamFuaXRvciB3b3Jr
IGFuZCBsYXJnZSBzY2FsZSBjaGFuZ2VzLgoKU3BhcnNlIHNlZW1zIGxpa2UgYSBwcmVzdWJtaXQg
dG9vbC4KCmdkYiBhbmQga2RiIGFyZSBsaWtlbHkgdXNlZCBieSBldmVyeW9uZSBmb3IgZGVidWdn
aW5nLgoKa3NlbGZ0ZXN0IChhbmQsIGlmIEkgZ2V0IG15IHdheSwgS1VuaXQpIGFyZSB1c2VkIHBy
aW1hcmlseSBwZW9wbGUKY29udHJpYnV0aW5nIG5ldyBmZWF0dXJlcyAodGhpcyBpcyBvbmUgSSBo
YXZlIG1vcmUgb2YgYSB2ZXN0ZWQKaW50ZXJlc3QgaW4sIHNvIEkgd2lsbCBsZWF2ZSBpdCBhdCB0
aGF0LCBidXQgdGhlIHBvaW50IGlzOiBJIHRoaW5rCnRoZXkgd291bGQgZ28gdG9nZXRoZXIpLgoK
TW9zdCBvZiB0aGUgcmVtYWluaW5nIHRvb2xzIChleGNlcHQgZ2NvdikgbG9vayBsaWtlIHRoZSBr
aW5kIG9mIGxvbmcKcnVubmluZyB0ZXN0cyB0aGF0IHlvdSBwb2ludCBhdCBhIHN0YWJsZSB0cmVl
IGFuZCBsZXQgaXQgc2l0IGFuZCBjYXRjaApidWdzLiBTdXBlciB1c2VmdWwsIGJ1dCBJIGRvbid0
IHRoaW5rIHlvdXIgYXZlcmFnZSBrZXJuZWwgZGV2IGlzIGdvaW5nCnRvIGJlIHRyeWluZyB0byBz
ZXQgaXQgdXAgb3IgcnVuIGl0LiBQbGVhc2UgY29ycmVjdCBtZSBpZiBJIGFtIHdyb25nLgoKU28g
dGhhdCBsZWF2ZXMgZ2Nvdi4gSSB0aGluayBpdCBpcyBhd2Vzb21lLCBidXQgSSBhbSBub3Qgc3Vy
ZSBob3cgdG8KY2F0ZWdvcml6ZSBpdC4gRGVmaW5pdGVseSB3YW50IHNvbWUgYWR2aWNlIGhlcmUu
CgpPbmNlIGV2ZXJ5dGhpbmcgaXMgYXBwcm9wcmlhdGVseSBjYXRlZ29yaXplZCBieSBzaGFwZSwg
aW4gKGEpCnN1YnNlcXVlbnQgcGF0Y2hzZXQocykgd2UgY2FuIHRpZSBlYWNoIG9uZSBpbiB3aXRo
IGEgZ3VpZGUsIG5vdCBqdXN0Cm9uIGhvdyB0byB1c2UgdGhlIHRvb2wsIGJ1dCBob3cgdGhlIHdv
cmtmbG93IGxvb2tzIGZvciBzb21lb25lIHdobwp1c2VzIHRoYXQgdG9vbC4gRm9yIGV4YW1wbGUs
IHdlIG1pZ2h0IHdhbnQgdG8gYSBndWlkZSBvbiBob3cgdG8gZG8KbGFyZ2Ugc2NhbGUgY2hhbmdl
cyBpbiB0aGUgTGludXgga2VybmVsIGFuZCBoYXZlIHRoYXQgdGllIGluIHdpdGgKQ29jY2luZWxs
ZS4gRm9yIGtzZWxmdGVzdCBhbmQgS1VuaXQsIHdlIG1pZ2h0IHdhbnQgdG8gcHJvdmlkZSBhIGd1
aWRlCm9uIGhvdyB0byB0ZXN0IExpbnV4IGtlcm5lbCBjb2RlLCB3aGljaCB3b3VsZCBjb3ZlciB3
aGVuIGFuZCBob3cgdG8KdXNlIGVhY2guCgpBbnl3YXksIGp1c3QgYSB2YWd1ZSBza2V0Y2guIExv
b2tpbmcgZm9yd2FyZCB0byBoZWFyIHdoYXQgZXZlcnlvbmUgdGhpbmtzIQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0
CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
