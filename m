Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5411A16D8
	for <lists+linux-um@lfdr.de>; Tue,  7 Apr 2020 22:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9ifr1kG9nGEVbREq6MOzxUuNwM7FGpnWny7961yOu7o=; b=SrPn8GCanQFilH
	vSz6nAWxKzCQfzE2ybYv9eWN2bYDJp/ufXkzZjNO5+SA9fJ3+jznA5ijG8Ior9UdqdKZyt/LLF4q2
	J4q4FN8Ok1zPm8uA7xOLFCym4jNBEu3+z4hEjmWCUAvS+WOIf5ANafnUU0JJXdjZThLBsVyTaprow
	9dOorjFLdzkTykndSgKGBDAtDP3QvOo/zMYFczMHvIe18E+jNvZUDB0kHofoe47EIW1Yr+PW5cvDX
	nRbTavD9zPeoptKajFYAaEqqFXFkz5rswxN3KnNd4YC6y3uXa6YKSV+J6arppRTU4n5WlJyYW0p99
	k89FfMn49eRhJE7e0oow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLusF-0000Mu-Jx; Tue, 07 Apr 2020 20:31:07 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLusC-0000MK-Kc
 for linux-um@lists.infradead.org; Tue, 07 Apr 2020 20:31:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586291461;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=zk1012gzAvIBdJE5HTKwuZBYt2+UO/CryxBo1Cp7uNE=;
 b=aq/lQXQvjkU53QLxgph+QRTKIO2sbz34Rlhd8YwH2Ol4SpQ3QugXuu6SN0gVmOZuFK35mX
 YKMGfJbONQL5Y3KrloOq4OKh08OT/upKj6x1rI9SaOlapLz3Nc5MDMaVnNA5maNUZCdVVY
 /EWU8gzTF3dku2nX8ltGmQYkwa0iPsk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-509-PEd1Lrc8Mm2hyfvy8GwhLw-1; Tue, 07 Apr 2020 16:29:00 -0400
X-MC-Unique: PEd1Lrc8Mm2hyfvy8GwhLw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92247800D50;
 Tue,  7 Apr 2020 20:28:58 +0000 (UTC)
Received: from localhost (unknown [10.36.110.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E7D001BC6D;
 Tue,  7 Apr 2020 20:28:54 +0000 (UTC)
From: =?UTF-8?q?Marc-Andr=C3=A9=20Lureau?= <marcandre.lureau@redhat.com>
To: linux-um@lists.infradead.org
Subject: [PATCH] um: add a generic "fd" vector transport
Date: Tue,  7 Apr 2020 22:28:53 +0200
Message-Id: <20200407202853.1791218-1-marcandre.lureau@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_133104_848525_9634415E 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: joerd.simons@collabora.co.uk, richard@nod.at, jdike@addtoit.com,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Marc-Andr=C3=A9=20Lureau?= <marcandre.lureau@redhat.com>,
 alex.dewar@gmx.co.uk, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

TGVhcm4gdG8gdGFrZSBhIHByZS1vcGVuZWQgZmlsZS1kZXNjcmlwdG9yIGZvciB2ZWN0b3IgSU8u
CgpJbnN0ZWFkIG9mIHRlYWNoaW5nIHRoZSBkcml2ZXIgdG8gb3BlbiBhIEZEIGluIG11bHRpcGxl
IHdheXMsIGl0IGNhbgpyZWx5IG9uIG1hbmFnZW1lbnQgbGF5ZXIgdG8gZG8gaXQgb24gaXRzIGJl
aGFsZi4gRm9yIGV4YW1wbGUsIHRoaXMKYWxsb3dzIGluaGVyaXRpbmcgYSBwcmVjb25maWd1cmVk
IGRldmljZSBmZCBvciBhIHNpbXBsZSBzb2NrZXRwYWlyKCkKc2V0dXAsIHdpdGhvdXQgZnVydGhl
ciBhcmd1bWVudHMsIHByaXZpbGVnZXMgb3Igc3lzdGVtIGFjY2VzcyBieSBVTUwuCgpTaWduZWQt
b2ZmLWJ5OiBNYXJjLUFuZHLDqSBMdXJlYXUgPG1hcmNhbmRyZS5sdXJlYXVAcmVkaGF0LmNvbT4K
LS0tCiBhcmNoL3VtL2RyaXZlcnMvdmVjdG9yX3VzZXIuYyB8IDU5ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNTkgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvdW0vZHJpdmVycy92ZWN0b3JfdXNlci5jIGIvYXJjaC91bS9kcml2ZXJz
L3ZlY3Rvcl91c2VyLmMKaW5kZXggMjlmYWUwNDU2YWRlLi40NWMxNTUwZGJiMzcgMTAwNjQ0Ci0t
LSBhL2FyY2gvdW0vZHJpdmVycy92ZWN0b3JfdXNlci5jCisrKyBiL2FyY2gvdW0vZHJpdmVycy92
ZWN0b3JfdXNlci5jCkBAIC0yOSw2ICsyOSw3IEBACiAjaW5jbHVkZSA8bmV0ZGIuaD4KICNpbmNs
dWRlIDxzdGRsaWIuaD4KICNpbmNsdWRlIDxvcy5oPgorI2luY2x1ZGUgPGxpbWl0cy5oPgogI2lu
Y2x1ZGUgPHVtX21hbGxvYy5oPgogI2luY2x1ZGUgInZlY3Rvcl91c2VyLmgiCiAKQEAgLTQyLDYg
KzQzLDkgQEAKICNkZWZpbmUgVFJBTlNfUkFXICJyYXciCiAjZGVmaW5lIFRSQU5TX1JBV19MRU4g
c3RybGVuKFRSQU5TX1JBVykKIAorI2RlZmluZSBUUkFOU19GRCAiZmQiCisjZGVmaW5lIFRSQU5T
X0ZEX0xFTiBzdHJsZW4oVFJBTlNfRkQpCisKICNkZWZpbmUgVk5FVF9IRFJfRkFJTCAiY291bGQg
bm90IGVuYWJsZSB2bmV0IGhlYWRlcnMgb24gZmQgJWQiCiAjZGVmaW5lIFRVTl9HRVRfRl9GQUlM
ICJ0YXByYXc6IFRVTkdFVEZFQVRVUkVTIGZhaWxlZDogJXMiCiAjZGVmaW5lIEwyVFBWM19CSU5E
X0ZBSUwgImwydHB2M19vcGVuIDogY291bGQgbm90IGJpbmQgc29ja2V0IGVycj0laSIKQEAgLTM0
Nyw2ICszNTEsNTkgQEAgc3RhdGljIHN0cnVjdCB2ZWN0b3JfZmRzICp1c2VyX2luaXRfdW5peF9m
ZHMoc3RydWN0IGFyZ2xpc3QgKmlmc3BlYywgaW50IGlkKQogCXJldHVybiBOVUxMOwogfQogCitz
dGF0aWMgaW50IHN0cnRvZmQoY29uc3QgY2hhciAqbnB0cikKK3sKKwlsb25nIGZkOworCWNoYXIg
KmVuZHB0cjsKKworCWlmIChucHRyID09IE5VTEwpCisJCXJldHVybiAtMTsKKworCWVycm5vID0g
MDsKKwlmZCA9IHN0cnRvbChucHRyLCAmZW5kcHRyLCAxMCk7CisJaWYgKG5wdHIgPT0gZW5kcHRy
IHx8CisJCWVycm5vICE9IDAgfHwKKwkJKmVuZHB0ciAhPSAnXDAnIHx8CisJCWZkIDwgMCB8fAor
CQlmZCA+IElOVF9NQVgpIHsKKwkJcmV0dXJuIC0xOworCX0KKwlyZXR1cm4gZmQ7Cit9CisKK3N0
YXRpYyBzdHJ1Y3QgdmVjdG9yX2ZkcyAqdXNlcl9pbml0X2ZkX2ZkcyhzdHJ1Y3QgYXJnbGlzdCAq
aWZzcGVjKQoreworCWludCBmZCA9IC0xOworCWNoYXIgKmZkYXJnID0gTlVMTDsKKwlzdHJ1Y3Qg
dmVjdG9yX2ZkcyAqcmVzdWx0ID0gTlVMTDsKKworCWZkYXJnID0gdW1sX3ZlY3Rvcl9mZXRjaF9h
cmcoaWZzcGVjLCAiZmQiKTsKKwlmZCA9IHN0cnRvZmQoZmRhcmcpOworCWlmIChmZCA9PSAtMSkg
eworCQlwcmludGsoVU1fS0VSTl9FUlIgImZkIG9wZW46IGJhZCBvciBtaXNzaW5nIGZkIGFyZ3Vt
ZW50Iik7CisJCWdvdG8gZmRfY2xlYW51cDsKKwl9CisKKwlyZXN1bHQgPSB1bWxfa21hbGxvYyhz
aXplb2Yoc3RydWN0IHZlY3Rvcl9mZHMpLCBVTV9HRlBfS0VSTkVMKTsKKwlpZiAocmVzdWx0ID09
IE5VTEwpIHsKKwkJcHJpbnRrKFVNX0tFUk5fRVJSICJmZCBvcGVuOiBhbGxvY2F0aW9uIGZhaWxl
ZCIpOworCQlnb3RvIGZkX2NsZWFudXA7CisJfQorCisJcmVzdWx0LT5yeF9mZCA9IGZkOworCXJl
c3VsdC0+dHhfZmQgPSBmZDsKKwlyZXN1bHQtPnJlbW90ZV9hZGRyX3NpemUgPSAwOworCXJlc3Vs
dC0+cmVtb3RlX2FkZHIgPSBOVUxMOworCXJldHVybiByZXN1bHQ7CisKK2ZkX2NsZWFudXA6CisJ
aWYgKGZkID49IDApCisJCW9zX2Nsb3NlX2ZpbGUoZmQpOworCWlmIChyZXN1bHQgIT0gTlVMTCkK
KwkJa2ZyZWUocmVzdWx0KTsKKwlyZXR1cm4gTlVMTDsKK30KKwogc3RhdGljIHN0cnVjdCB2ZWN0
b3JfZmRzICp1c2VyX2luaXRfcmF3X2ZkcyhzdHJ1Y3QgYXJnbGlzdCAqaWZzcGVjKQogewogCWlu
dCByeGZkID0gLTEsIHR4ZmQgPSAtMTsKQEAgLTU3OCw2ICs2MzUsOCBAQCBzdHJ1Y3QgdmVjdG9y
X2ZkcyAqdW1sX3ZlY3Rvcl91c2VyX29wZW4oCiAJCXJldHVybiB1c2VyX2luaXRfc29ja2V0X2Zk
cyhwYXJzZWQsIElEX0wyVFBWMyk7CiAJaWYgKHN0cm5jbXAodHJhbnNwb3J0LCBUUkFOU19CRVNT
LCBUUkFOU19CRVNTX0xFTikgPT0gMCkKIAkJcmV0dXJuIHVzZXJfaW5pdF91bml4X2ZkcyhwYXJz
ZWQsIElEX0JFU1MpOworCWlmIChzdHJuY21wKHRyYW5zcG9ydCwgVFJBTlNfRkQsIFRSQU5TX0ZE
X0xFTikgPT0gMCkKKwkJcmV0dXJuIHVzZXJfaW5pdF9mZF9mZHMocGFyc2VkKTsKIAlyZXR1cm4g
TlVMTDsKIH0KIAotLSAKMi4yNi4wLjEwNi5nOWZhZGVkZDYzNwoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlzdApsaW51
eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtdW0K
