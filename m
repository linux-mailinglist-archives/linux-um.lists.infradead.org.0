Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8CB123B65
	for <lists+linux-um@lfdr.de>; Wed, 18 Dec 2019 01:15:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CakyLUICFEOtik8Lb7IjbDYMzSjEGioiEjJLW22P2Zk=; b=u+sPJpmr4Mrbb1
	heQTos8lR6ErKem8phxR64MeBdrydUHeatgFy7JG3G/nvcyGao6hQUV8pH9fj6M7w9FA2nTzJjp0C
	CFBLm+Z9oenxHmM7NLf2bMCaPAjTvWUWS+s66iYvJqwYftiem04VJdI81PVaNASOg2gYnqu4eawhf
	3bKBzutnqwFZOZQdtXMEjmOnDHLgjqPgYOIngugdKjbHgXRPlCsON/E1956FNLBkFKn65tKGMG3zu
	fG8nZy6xlDOT7LJdFllh7lNjxo3m2x2ATTbE0txzyqfCUekfKEsmPU4hbZ9WQXHlFkjF8Cob6VN81
	nsnuiFZSIdzGJwil+ZgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihMzX-0004Tf-Gk; Wed, 18 Dec 2019 00:15:03 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihMzU-0004MX-1i
 for linux-um@lists.infradead.org; Wed, 18 Dec 2019 00:15:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id 6so231755pgk.0
 for <linux-um@lists.infradead.org>; Tue, 17 Dec 2019 16:14:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=QySu5AL4vmDfm5xadll7zClUUSNeDPk2VDOL+wriQso=;
 b=PbJQMj6s8UDceq4fX78w3HBESE1jt/gjDcTA/IbIMqODLk2ua2SYiUyZtq6Lgqdqk5
 zhAH2Jg3Sh4ZeZ/U25OQSHTCh0eJnSGdSkvkDZ9Ce57bW/sXnq3Iub9gk05mEDiAPP4b
 41gSu+EOMa/I+Pdj3yAubRsaeeeS/fGyTdbxE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=QySu5AL4vmDfm5xadll7zClUUSNeDPk2VDOL+wriQso=;
 b=ucKMZzkQ8U5ypi+f2WG6Ny+a9bodouv1k0lY8IllgaoAAvk5ac+hPlPG80iXi0nDNm
 ++PM8nUXBjT2d1W8WWqUqfg5I7BGxbKPO7anzKRblzq9bikNV5R+TKZ3lgo2fqhj9OjO
 SSOkUHNAzsgkOfc6F+wF+2CphcVg/5c19nmAVzEkzOB8MVjMIv3l5HMhqK056jksKi/o
 9lNQiyx8frLaP1yBJyVVkJP8vtFMevY/j7Sciwm1hwmUzD5IfgX5HtH036enMAlSBEBX
 xdpf13L5sDm/mWkUSrFRuydH04Cd1AoaRX7/O9NcRK7jj4cI7N76B04uvLIvv+uLtWxv
 b72w==
X-Gm-Message-State: APjAAAUsg0Q85552bXp1uZzI/QQZ5+EUyOCzk01xUZA4SYI2jiJQKu9X
 t1Y1hbG/1mj0+A8BhMLn3q4noq2ZbXo=
X-Google-Smtp-Source: APXvYqzXKaqFrpOCj80Rh9+nv8sotyqQ0zkCmoXkrbR2mi1RSKnpa0m7As9aDsEhoUgKHuvXX2uBeA==
X-Received: by 2002:a63:941:: with SMTP id 62mr101267pgj.203.1576628098553;
 Tue, 17 Dec 2019 16:14:58 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g10sm157229pgh.35.2019.12.17.16.14.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 16:14:57 -0800 (PST)
Date: Tue, 17 Dec 2019 16:14:56 -0800
From: Kees Cook <keescook@chromium.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v1] lkdtm/bugs: fix build error in lkdtm_UNSET_SMEP
Message-ID: <201912171613.454319D@keescook>
References: <20191213003522.66450-1-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213003522.66450-1-brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_161500_118401_D8452C17 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: arnd@arndb.de, richard@nod.at, jdike@addtoit.com,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 davidgow@google.com, gregkh@linuxfoundation.org,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

T24gVGh1LCBEZWMgMTIsIDIwMTkgYXQgMDQ6MzU6MjJQTSAtMDgwMCwgQnJlbmRhbiBIaWdnaW5z
IHdyb3RlOgo+IFdoZW4gYnVpbGRpbmcgQVJDSD11bSB3aXRoIENPTkZJR19VTUxfWDg2PXkgYW5k
IENPTkZJR182NEJJVD15IHdlIGdldAo+IHRoZSBidWlsZCBlcnJvcnM6Cj4gCj4gZHJpdmVycy9t
aXNjL2xrZHRtL2J1Z3MuYzogSW4gZnVuY3Rpb24g4oCYbGtkdG1fVU5TRVRfU01FUOKAmToKPiBk
cml2ZXJzL21pc2MvbGtkdG0vYnVncy5jOjI4ODo4OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRp
b24gb2YgZnVuY3Rpb24g4oCYbmF0aXZlX3JlYWRfY3I04oCZIFstV2Vycm9yPWltcGxpY2l0LWZ1
bmN0aW9uLWRlY2xhcmF0aW9uXQo+ICAgY3I0ID0gbmF0aXZlX3JlYWRfY3I0KCk7Cj4gICAgICAg
ICBefn5+fn5+fn5+fn5+fn4KPiBkcml2ZXJzL21pc2MvbGtkdG0vYnVncy5jOjI5MDoxMzogZXJy
b3I6IOKAmFg4Nl9DUjRfU01FUOKAmSB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5j
dGlvbik7IGRpZCB5b3UgbWVhbiDigJhYODZfRkVBVFVSRV9TTUVQ4oCZPwo+ICAgaWYgKChjcjQg
JiBYODZfQ1I0X1NNRVApICE9IFg4Nl9DUjRfU01FUCkgewo+ICAgICAgICAgICAgICBefn5+fn5+
fn5+fn4KPiAgICAgICAgICAgICAgWDg2X0ZFQVRVUkVfU01FUAo+IGRyaXZlcnMvbWlzYy9sa2R0
bS9idWdzLmM6MjkwOjEzOiBub3RlOiBlYWNoIHVuZGVjbGFyZWQgaWRlbnRpZmllciBpcyByZXBv
cnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVuY3Rpb24gaXQgYXBwZWFycyBpbgo+IGRyaXZlcnMv
bWlzYy9sa2R0bS9idWdzLmM6Mjk3OjI6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBm
dW5jdGlvbiDigJhuYXRpdmVfd3JpdGVfY3I04oCZOyBkaWQgeW91IG1lYW4g4oCYZGlyZWN0X3dy
aXRlX2NyNOKAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gICBu
YXRpdmVfd3JpdGVfY3I0KGNyNCk7Cj4gICBefn5+fn5+fn5+fn5+fn5+Cj4gICBkaXJlY3Rfd3Jp
dGVfY3I0Cj4gCj4gU28gc3BlY2lmeSB0aGF0IHRoaXMgYmxvY2sgb2YgY29kZSBzaG91bGQgb25s
eSBidWlsZCB3aGVuCj4gQ09ORklHX1g4Nl82ND15ICpBTkQqIENPTkZJR19VTUwgaXMgdW5zZXQu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQnJlbmRhbiBIaWdnaW5zIDxicmVuZGFuaGlnZ2luc0Bnb29n
bGUuY29tPgoKVGhhbmtzIGZvciBjYXRjaGluZyB0aGlzISBJcyBhIHNpbWlsYXIgbWFya2luZyBu
ZWVkZWQgZm9yIHRoZSByZWNlbnRseQphZGRlZCBsa2R0bV9ET1VCTEVfRkFVTFQoKSB3aGVuIHVz
aW5nIFVNTCBvbiAzMi1iaXQ/CgpBY2tlZC1ieTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1
bS5vcmc+CgotS2VlcwoKPiAtLS0KPiAKPiBUaGlzIHBhdGNoIGlzIHBhcnQgb2YgbXkgbGFyZ2Vy
IGVmZm9ydCB0byBnZXQgYWxseWVzY29uZmlnIGNsb3NlciB0bwo+IHdvcmtpbmcgZm9yIEFSQ0g9
dW0uIEZvciBtb3JlIGluZm9ybWF0aW9uIGFib3V0IHRoYXQsIGNoZWNrb3V0IHRoZSBjb3Zlcgo+
IGxldHRlciBmb3IgYSByZWxhdGVkIHBhdGNoc2V0IGhlcmU6Cj4gCj4gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGttbC8yMDE5MTIxMTE5Mjc0Mi45NTY5OS0xLWJyZW5kYW5oaWdnaW5zQGdvb2ds
ZS5jb20vCj4gCj4gLS0tCj4gIGRyaXZlcnMvbWlzYy9sa2R0bS9idWdzLmMgfCAyICstCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL21pc2MvbGtkdG0vYnVncy5jIGIvZHJpdmVycy9taXNjL2xrZHRtL2J1Z3Mu
Ywo+IGluZGV4IGE0ZmRhZDA0ODA5YTkuLjZjMWFhYjE3N2ZjZWQgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9taXNjL2xrZHRtL2J1Z3MuYwo+ICsrKyBiL2RyaXZlcnMvbWlzYy9sa2R0bS9idWdzLmMK
PiBAQCAtMjc4LDcgKzI3OCw3IEBAIHZvaWQgbGtkdG1fU1RBQ0tfR1VBUkRfUEFHRV9UUkFJTElO
Ryh2b2lkKQo+ICAKPiAgdm9pZCBsa2R0bV9VTlNFVF9TTUVQKHZvaWQpCj4gIHsKPiAtI2lmZGVm
IENPTkZJR19YODZfNjQKPiArI2lmIElTX0VOQUJMRUQoQ09ORklHX1g4Nl82NCkgJiYgIUlTX0VO
QUJMRUQoQ09ORklHX1VNTCkKPiAgI2RlZmluZSBNT1ZfQ1I0X0RFUFRICTY0Cj4gIAl2b2lkICgq
ZGlyZWN0X3dyaXRlX2NyNCkodW5zaWduZWQgbG9uZyB2YWwpOwo+ICAJdW5zaWduZWQgY2hhciAq
aW5zbjsKPiAtLSAKPiAyLjI0LjEuNzM1LmcwM2Y0ZTcyODE3LWdvb2cKPiAKCi0tIApLZWVzIENv
b2sKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LXVtIG1haWxpbmcgbGlzdApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
